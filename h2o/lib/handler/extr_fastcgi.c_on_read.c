
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct st_fcgi_record_header_t {size_t contentLength; size_t paddingLength; int type; } ;
struct TYPE_14__ {int inflight; } ;
struct TYPE_10__ {TYPE_7__ sending; TYPE_1__* receiving; } ;
struct st_fcgi_generator_t {int sent_headers; TYPE_4__* handler; TYPE_2__ resp; int req; } ;
struct TYPE_13__ {TYPE_8__* input; struct st_fcgi_generator_t* data; } ;
typedef TYPE_5__ h2o_socket_t ;
struct TYPE_15__ {size_t size; int bytes; } ;
struct TYPE_11__ {int io_timeout; } ;
struct TYPE_12__ {TYPE_3__ config; } ;
struct TYPE_9__ {scalar_t__ size; } ;



 size_t FCGI_RECORD_HEADER_SIZE ;


 int H2O_SEND_STATE_IN_PROGRESS ;
 int MODULE_NAME ;
 int decode_header (struct st_fcgi_record_header_t*,int ) ;
 int do_send (struct st_fcgi_generator_t*) ;
 int errorclose (struct st_fcgi_generator_t*) ;
 int h2o_buffer_consume (TYPE_8__**,size_t) ;
 int h2o_doublebuffer_prepare_empty (TYPE_7__*) ;
 int h2o_req_log_error (int ,int ,char*,...) ;
 int h2o_send (int ,int *,int ,int ) ;
 int handle_stdin_record (struct st_fcgi_generator_t*,struct st_fcgi_record_header_t*) ;
 int on_rw_timeout ;
 int send_eos_and_close (struct st_fcgi_generator_t*,int) ;
 int set_timeout (struct st_fcgi_generator_t*,int ,int ) ;

__attribute__((used)) static void on_read(h2o_socket_t *sock, const char *err)
{
    struct st_fcgi_generator_t *generator = sock->data;
    int can_keepalive = 0;
    int sent_headers_before = generator->sent_headers;

    if (err != ((void*)0)) {

        if (!generator->sent_headers)
            h2o_req_log_error(generator->req, MODULE_NAME, "fastcgi connection closed unexpectedly");
        errorclose(generator);
        return;
    }


    while (1) {
        struct st_fcgi_record_header_t header;
        size_t recsize;
        if (sock->input->size < FCGI_RECORD_HEADER_SIZE)
            break;
        decode_header(&header, sock->input->bytes);
        recsize = FCGI_RECORD_HEADER_SIZE + header.contentLength + header.paddingLength;
        if (sock->input->size < recsize)
            break;

        switch (header.type) {
        case 128:
            if (handle_stdin_record(generator, &header) != 0)
                goto Error;
            h2o_buffer_consume(&sock->input, recsize);
            break;
        case 129:
            if (header.contentLength != 0)
                h2o_req_log_error(generator->req, MODULE_NAME, "%.*s", (int)header.contentLength,
                                  sock->input->bytes + FCGI_RECORD_HEADER_SIZE);
            h2o_buffer_consume(&sock->input, recsize);
            break;
        case 130:
            if (!generator->sent_headers) {
                h2o_req_log_error(generator->req, MODULE_NAME, "received FCGI_END_REQUEST before end of the headers");
                goto Error;
            }
            h2o_buffer_consume(&sock->input, recsize);
            can_keepalive = 1;
            goto EOS_Received;
        default:
            h2o_req_log_error(generator->req, MODULE_NAME, "received unexpected record, type: %u", header.type);
            h2o_buffer_consume(&sock->input, recsize);
            if (!generator->sent_headers)
                goto Error;
            goto EOS_Received;
        }
    }


    if (generator->sent_headers) {
        if (!sent_headers_before && generator->resp.receiving->size == 0) {

            h2o_doublebuffer_prepare_empty(&generator->resp.sending);
            h2o_send(generator->req, ((void*)0), 0, H2O_SEND_STATE_IN_PROGRESS);
        } else if (!generator->resp.sending.inflight) {
            do_send(generator);
        }
    }

    set_timeout(generator, generator->handler->config.io_timeout, on_rw_timeout);
    return;

EOS_Received:
    send_eos_and_close(generator, can_keepalive);
    return;

Error:
    errorclose(generator);
}
