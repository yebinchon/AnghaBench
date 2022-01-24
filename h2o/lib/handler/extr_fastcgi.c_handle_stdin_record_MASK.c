#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct st_fcgi_record_header_t {size_t contentLength; } ;
struct TYPE_13__ {TYPE_8__* receiving; } ;
struct st_fcgi_generator_t {int sent_headers; TYPE_3__ resp; TYPE_5__* req; int /*<<< orphan*/  super; int /*<<< orphan*/  leftsize; TYPE_1__* sock; } ;
struct phr_header {int dummy; } ;
typedef  int /*<<< orphan*/  headers ;
struct TYPE_14__ {scalar_t__ bytes; } ;
typedef  TYPE_4__ h2o_buffer_t ;
struct TYPE_17__ {size_t size; scalar_t__ bytes; } ;
struct TYPE_16__ {int /*<<< orphan*/  base; } ;
struct TYPE_12__ {int /*<<< orphan*/  content_length; } ;
struct TYPE_15__ {TYPE_2__ res; } ;
struct TYPE_11__ {TYPE_4__* input; } ;

/* Variables and functions */
 scalar_t__ FCGI_RECORD_HEADER_SIZE ; 
 int /*<<< orphan*/  MODULE_NAME ; 
 scalar_t__ FUNC0 (struct st_fcgi_generator_t*,scalar_t__,size_t) ; 
 scalar_t__ FUNC1 (TYPE_5__*,struct phr_header*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__**,int) ; 
 TYPE_7__ FUNC3 (TYPE_8__**,size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,size_t) ; 
 int FUNC7 (scalar_t__,size_t,struct phr_header*,size_t*,size_t) ; 

__attribute__((used)) static int FUNC8(struct st_fcgi_generator_t *generator, struct st_fcgi_record_header_t *header)
{
    h2o_buffer_t *input = generator->sock->input;
    struct phr_header headers[100];
    size_t num_headers;
    int parse_result;

    if (header->contentLength == 0)
        return 0;

    if (generator->sent_headers) {
        /* simply accumulate the data to response buffer */
        if (FUNC0(generator, input->bytes + FCGI_RECORD_HEADER_SIZE, header->contentLength) != 0) {
            FUNC4(generator->req, MODULE_NAME, "failed to allocate memory");
            return -1;
        }
        return 0;
    }

    /* parse the headers using the input buffer (or keep it in response buffer and parse) */
    num_headers = sizeof(headers) / sizeof(headers[0]);
    if (generator->resp.receiving->size == 0) {
        parse_result = FUNC7(input->bytes + FCGI_RECORD_HEADER_SIZE, header->contentLength, headers, &num_headers, 0);
    } else {
        size_t prevlen = generator->resp.receiving->size;
        FUNC6(FUNC3(&generator->resp.receiving, header->contentLength).base, input->bytes + FCGI_RECORD_HEADER_SIZE,
               header->contentLength);
        generator->resp.receiving->size = prevlen + header->contentLength;
        parse_result =
            FUNC7(generator->resp.receiving->bytes, generator->resp.receiving->size, headers, &num_headers, prevlen);
    }
    if (parse_result < 0) {
        if (parse_result == -2) {
            /* incomplete */
            if (generator->resp.receiving->size == 0) {
                FUNC6(FUNC3(&generator->resp.receiving, header->contentLength).base,
                       input->bytes + FCGI_RECORD_HEADER_SIZE, header->contentLength);
                generator->resp.receiving->size = header->contentLength;
            }
            return 0;
        } else {
            FUNC4(generator->req, MODULE_NAME, "received broken response");
            return -1;
        }
    }

    /* fill-in the headers, and start the response */
    if (FUNC1(generator->req, headers, num_headers) != 0)
        return -1;
    generator->leftsize = generator->req->res.content_length;
    FUNC5(generator->req, &generator->super);
    generator->sent_headers = 1;

    /* rest of the contents should be stored in the response buffer */
    if (generator->resp.receiving->size == 0) {
        size_t leftlen = header->contentLength - parse_result;
        if (leftlen != 0) {
            if (FUNC0(generator, input->bytes + FCGI_RECORD_HEADER_SIZE + parse_result, leftlen) != 0) {
                FUNC4(generator->req, MODULE_NAME, "failed to allocate memory");
                return -1;
            }
        }
    } else {
        FUNC2(&generator->resp.receiving, parse_result);
    }

    return 0;
}