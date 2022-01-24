#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct st_fcgi_record_header_t {size_t contentLength; size_t paddingLength; int type; } ;
struct TYPE_14__ {int /*<<< orphan*/  inflight; } ;
struct TYPE_10__ {TYPE_7__ sending; TYPE_1__* receiving; } ;
struct st_fcgi_generator_t {int sent_headers; TYPE_4__* handler; TYPE_2__ resp; int /*<<< orphan*/  req; } ;
struct TYPE_13__ {TYPE_8__* input; struct st_fcgi_generator_t* data; } ;
typedef  TYPE_5__ h2o_socket_t ;
struct TYPE_15__ {size_t size; int /*<<< orphan*/  bytes; } ;
struct TYPE_11__ {int /*<<< orphan*/  io_timeout; } ;
struct TYPE_12__ {TYPE_3__ config; } ;
struct TYPE_9__ {scalar_t__ size; } ;

/* Variables and functions */
#define  FCGI_END_REQUEST 130 
 size_t FCGI_RECORD_HEADER_SIZE ; 
#define  FCGI_STDERR 129 
#define  FCGI_STDOUT 128 
 int /*<<< orphan*/  H2O_SEND_STATE_IN_PROGRESS ; 
 int /*<<< orphan*/  MODULE_NAME ; 
 int /*<<< orphan*/  FUNC0 (struct st_fcgi_record_header_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct st_fcgi_generator_t*) ; 
 int /*<<< orphan*/  FUNC2 (struct st_fcgi_generator_t*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__**,size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct st_fcgi_generator_t*,struct st_fcgi_record_header_t*) ; 
 int /*<<< orphan*/  on_rw_timeout ; 
 int /*<<< orphan*/  FUNC8 (struct st_fcgi_generator_t*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct st_fcgi_generator_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(h2o_socket_t *sock, const char *err)
{
    struct st_fcgi_generator_t *generator = sock->data;
    int can_keepalive = 0;
    int sent_headers_before = generator->sent_headers;

    if (err != NULL) {
        /* note: FastCGI server is allowed to close the connection any time after sending an empty FCGI_STDOUT record */
        if (!generator->sent_headers)
            FUNC5(generator->req, MODULE_NAME, "fastcgi connection closed unexpectedly");
        FUNC2(generator);
        return;
    }

    /* handle the records */
    while (1) {
        struct st_fcgi_record_header_t header;
        size_t recsize;
        if (sock->input->size < FCGI_RECORD_HEADER_SIZE)
            break;
        FUNC0(&header, sock->input->bytes);
        recsize = FCGI_RECORD_HEADER_SIZE + header.contentLength + header.paddingLength;
        if (sock->input->size < recsize)
            break;
        /* we have a complete record */
        switch (header.type) {
        case FCGI_STDOUT:
            if (FUNC7(generator, &header) != 0)
                goto Error;
            FUNC3(&sock->input, recsize);
            break;
        case FCGI_STDERR:
            if (header.contentLength != 0)
                FUNC5(generator->req, MODULE_NAME, "%.*s", (int)header.contentLength,
                                  sock->input->bytes + FCGI_RECORD_HEADER_SIZE);
            FUNC3(&sock->input, recsize);
            break;
        case FCGI_END_REQUEST:
            if (!generator->sent_headers) {
                FUNC5(generator->req, MODULE_NAME, "received FCGI_END_REQUEST before end of the headers");
                goto Error;
            }
            FUNC3(&sock->input, recsize);
            can_keepalive = 1;
            goto EOS_Received;
        default:
            FUNC5(generator->req, MODULE_NAME, "received unexpected record, type: %u", header.type);
            FUNC3(&sock->input, recsize);
            if (!generator->sent_headers)
                goto Error;
            goto EOS_Received;
        }
    }

    /* send data if necessary */
    if (generator->sent_headers) {
        if (!sent_headers_before && generator->resp.receiving->size == 0) {
            /* send headers immediately */
            FUNC4(&generator->resp.sending);
            FUNC6(generator->req, NULL, 0, H2O_SEND_STATE_IN_PROGRESS);
        } else if (!generator->resp.sending.inflight) {
            FUNC1(generator);
        }
    }

    FUNC9(generator, generator->handler->config.io_timeout, on_rw_timeout);
    return;

EOS_Received:
    FUNC8(generator, can_keepalive);
    return;

Error:
    FUNC2(generator);
}