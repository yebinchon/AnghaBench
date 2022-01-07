
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct st_fcgi_record_header_t {size_t contentLength; } ;
struct TYPE_13__ {TYPE_8__* receiving; } ;
struct st_fcgi_generator_t {int sent_headers; TYPE_3__ resp; TYPE_5__* req; int super; int leftsize; TYPE_1__* sock; } ;
struct phr_header {int dummy; } ;
typedef int headers ;
struct TYPE_14__ {scalar_t__ bytes; } ;
typedef TYPE_4__ h2o_buffer_t ;
struct TYPE_17__ {size_t size; scalar_t__ bytes; } ;
struct TYPE_16__ {int base; } ;
struct TYPE_12__ {int content_length; } ;
struct TYPE_15__ {TYPE_2__ res; } ;
struct TYPE_11__ {TYPE_4__* input; } ;


 scalar_t__ FCGI_RECORD_HEADER_SIZE ;
 int MODULE_NAME ;
 scalar_t__ append_content (struct st_fcgi_generator_t*,scalar_t__,size_t) ;
 scalar_t__ fill_headers (TYPE_5__*,struct phr_header*,size_t) ;
 int h2o_buffer_consume (TYPE_8__**,int) ;
 TYPE_7__ h2o_buffer_reserve (TYPE_8__**,size_t) ;
 int h2o_req_log_error (TYPE_5__*,int ,char*) ;
 int h2o_start_response (TYPE_5__*,int *) ;
 int memcpy (int ,scalar_t__,size_t) ;
 int phr_parse_headers (scalar_t__,size_t,struct phr_header*,size_t*,size_t) ;

__attribute__((used)) static int handle_stdin_record(struct st_fcgi_generator_t *generator, struct st_fcgi_record_header_t *header)
{
    h2o_buffer_t *input = generator->sock->input;
    struct phr_header headers[100];
    size_t num_headers;
    int parse_result;

    if (header->contentLength == 0)
        return 0;

    if (generator->sent_headers) {

        if (append_content(generator, input->bytes + FCGI_RECORD_HEADER_SIZE, header->contentLength) != 0) {
            h2o_req_log_error(generator->req, MODULE_NAME, "failed to allocate memory");
            return -1;
        }
        return 0;
    }


    num_headers = sizeof(headers) / sizeof(headers[0]);
    if (generator->resp.receiving->size == 0) {
        parse_result = phr_parse_headers(input->bytes + FCGI_RECORD_HEADER_SIZE, header->contentLength, headers, &num_headers, 0);
    } else {
        size_t prevlen = generator->resp.receiving->size;
        memcpy(h2o_buffer_reserve(&generator->resp.receiving, header->contentLength).base, input->bytes + FCGI_RECORD_HEADER_SIZE,
               header->contentLength);
        generator->resp.receiving->size = prevlen + header->contentLength;
        parse_result =
            phr_parse_headers(generator->resp.receiving->bytes, generator->resp.receiving->size, headers, &num_headers, prevlen);
    }
    if (parse_result < 0) {
        if (parse_result == -2) {

            if (generator->resp.receiving->size == 0) {
                memcpy(h2o_buffer_reserve(&generator->resp.receiving, header->contentLength).base,
                       input->bytes + FCGI_RECORD_HEADER_SIZE, header->contentLength);
                generator->resp.receiving->size = header->contentLength;
            }
            return 0;
        } else {
            h2o_req_log_error(generator->req, MODULE_NAME, "received broken response");
            return -1;
        }
    }


    if (fill_headers(generator->req, headers, num_headers) != 0)
        return -1;
    generator->leftsize = generator->req->res.content_length;
    h2o_start_response(generator->req, &generator->super);
    generator->sent_headers = 1;


    if (generator->resp.receiving->size == 0) {
        size_t leftlen = header->contentLength - parse_result;
        if (leftlen != 0) {
            if (append_content(generator, input->bytes + FCGI_RECORD_HEADER_SIZE + parse_result, leftlen) != 0) {
                h2o_req_log_error(generator->req, MODULE_NAME, "failed to allocate memory");
                return -1;
            }
        }
    } else {
        h2o_buffer_consume(&generator->resp.receiving, parse_result);
    }

    return 0;
}
