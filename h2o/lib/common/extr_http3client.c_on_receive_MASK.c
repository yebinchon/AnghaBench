#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_9__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_15__ {size_t bytes_contiguous; TYPE_10__* partial_frame; TYPE_1__* body; TYPE_10__* noncontiguous; } ;
struct st_h2o_http3client_req_t {int (* handle_input ) (struct st_h2o_http3client_req_t*,int /*<<< orphan*/  const**,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,char const**) ;TYPE_2__ recvbuf; TYPE_4__* quic; } ;
struct TYPE_16__ {struct st_h2o_http3client_req_t* data; } ;
typedef  TYPE_3__ quicly_stream_t ;
struct TYPE_19__ {int /*<<< orphan*/ * base; } ;
struct TYPE_18__ {scalar_t__ data_off; scalar_t__ eos; } ;
struct TYPE_17__ {int /*<<< orphan*/  sendstate; TYPE_6__ recvstate; } ;
struct TYPE_14__ {size_t size; } ;
struct TYPE_13__ {size_t size; scalar_t__ bytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  H2O_HTTP3_ERROR_EOS ; 
 int H2O_HTTP3_ERROR_FRAME ; 
 int H2O_HTTP3_ERROR_INCOMPLETE ; 
 int /*<<< orphan*/  H2O_HTTP3_ERROR_NONE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct st_h2o_http3client_req_t*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct st_h2o_http3client_req_t*) ; 
 int /*<<< orphan*/  FUNC4 (struct st_h2o_http3client_req_t*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_10__**,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_10__**,size_t) ; 
 TYPE_9__ FUNC7 (TYPE_10__**,size_t) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,void const*,size_t) ; 
 size_t FUNC9 (TYPE_6__*) ; 
 int FUNC10 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,size_t) ; 
 int FUNC14 (struct st_h2o_http3client_req_t*,int /*<<< orphan*/  const**,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,char const**) ; 

__attribute__((used)) static int FUNC15(quicly_stream_t *qs, size_t off, const void *input, size_t len)
{
    struct st_h2o_http3client_req_t *req = qs->data;
    const uint8_t *src, *src_end;
    size_t bytes_available, bytes_from_noncontiguous;
    int is_eos, ret;
    const char *err_desc = NULL;

    FUNC1(req->recvbuf.body->size + req->recvbuf.partial_frame->size == req->recvbuf.bytes_contiguous);

    if (FUNC10(&req->quic->recvstate)) {
        bytes_available = (size_t)(req->quic->recvstate.eos - req->quic->recvstate.data_off);
    } else {
        bytes_available = FUNC9(&req->quic->recvstate);
    }

    if (req->recvbuf.noncontiguous->size == 0 && bytes_available == off + len) {
        /* fast path; there was no hole */
        src = input;
        src_end = src + len;
        bytes_from_noncontiguous = 0;
    } else {
        /* slow path; copy data to noncontiguous buffer */
        size_t size_required = off + len - req->recvbuf.bytes_contiguous;
        if (req->recvbuf.noncontiguous->size < size_required) {
            FUNC0(FUNC7(&req->recvbuf.noncontiguous, size_required).base != NULL);
            req->recvbuf.noncontiguous->size = size_required;
        }
        FUNC8(req->recvbuf.noncontiguous->bytes + off - req->recvbuf.bytes_contiguous, input, len);
        /* just return if no new data is available */
        if (bytes_available == req->recvbuf.bytes_contiguous)
            return 0;
        /* update input, len, as well as record the number of bytes to retire from noncontiguous buffer */
        FUNC1(bytes_available > req->recvbuf.bytes_contiguous);
        bytes_from_noncontiguous = bytes_available - req->recvbuf.bytes_contiguous;
        src = (const uint8_t *)req->recvbuf.noncontiguous->bytes;
        src_end = src + bytes_from_noncontiguous;
    }

    /* append data to partial buffer (if it's non-empty) */
    if (req->recvbuf.partial_frame->size != 0) {
        FUNC5(&req->recvbuf.partial_frame, src, src_end - src);
        src = (const uint8_t *)req->recvbuf.partial_frame->bytes;
        src_end = src + req->recvbuf.partial_frame->size;
    }

    /* process the contiguous input */
    is_eos = FUNC10(&req->quic->recvstate);
    FUNC1(is_eos || src != src_end);
    do {
        ret = req->handle_input(req, &src, src_end, is_eos ? H2O_HTTP3_ERROR_EOS : 0, &err_desc);
    } while (ret == 0 && src != src_end);

    /* save data to partial buffer (if necessary) */
    if (ret == H2O_HTTP3_ERROR_INCOMPLETE) {
        if (is_eos)
            return H2O_HTTP3_ERROR_FRAME; /* TODO communicate err_desc (or set one) */
        FUNC1(src < src_end);
        if (req->recvbuf.partial_frame->size != 0) {
            FUNC1(src_end == (const uint8_t *)req->recvbuf.partial_frame->bytes + req->recvbuf.partial_frame->size);
            FUNC6(&req->recvbuf.partial_frame, src - (const uint8_t *)req->recvbuf.partial_frame->bytes);
        } else {
            FUNC5(&req->recvbuf.partial_frame, src, src_end - src);
        }
    }

    /* cleanup */
    if (is_eos) {
        if (!FUNC12(&req->quic->sendstate))
            FUNC11(req->quic, H2O_HTTP3_ERROR_NONE);
        FUNC4(req);
        FUNC3(req);
    } else if (ret != 0) {
        /* FIXME consider how to send err_desc */
        FUNC2(req, ret);
        FUNC3(req);
    } else {
        if (bytes_from_noncontiguous != 0)
            FUNC6(&req->recvbuf.noncontiguous, bytes_from_noncontiguous);
        size_t contiguous_bytes_in_buffer = req->recvbuf.body->size + req->recvbuf.partial_frame->size;
        if (bytes_available != contiguous_bytes_in_buffer) {
            FUNC1(contiguous_bytes_in_buffer < bytes_available);
            FUNC13(req->quic, bytes_available - contiguous_bytes_in_buffer);
            req->recvbuf.bytes_contiguous = contiguous_bytes_in_buffer;
        }
    }

    return 0;
}