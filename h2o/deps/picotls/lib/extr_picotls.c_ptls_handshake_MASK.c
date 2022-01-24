#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_20__ {TYPE_7__* buf; } ;
struct st_ptls_record_message_emitter_t {TYPE_5__ super; } ;
struct TYPE_18__ {int state; TYPE_1__* ctx; } ;
typedef  TYPE_2__ ptls_t ;
typedef  int /*<<< orphan*/  ptls_handshake_properties_t ;
struct TYPE_19__ {scalar_t__ off; } ;
typedef  TYPE_3__ ptls_buffer_t ;
typedef  int /*<<< orphan*/  decryptbuf_small ;
struct TYPE_21__ {size_t off; int /*<<< orphan*/  base; } ;
struct TYPE_17__ {int /*<<< orphan*/ ** key_exchanges; } ;

/* Variables and functions */
 int PTLS_ALERT_INTERNAL_ERROR ; 
 int /*<<< orphan*/  PTLS_ALERT_LEVEL_FATAL ; 
 int /*<<< orphan*/  PTLS_ERROR_CLASS_PEER_ALERT ; 
 int /*<<< orphan*/  PTLS_ERROR_CLASS_SELF_ALERT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  PTLS_ERROR_IN_PROGRESS 130 
#define  PTLS_ERROR_STATELESS_RETRY 129 
#define  PTLS_STATE_CLIENT_HANDSHAKE_START 128 
 int PTLS_STATE_POST_HANDSHAKE_MIN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_2__*,TYPE_5__*,TYPE_3__*,int /*<<< orphan*/  const*,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct st_ptls_record_message_emitter_t*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_7__*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (TYPE_2__*,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC9(ptls_t *tls, ptls_buffer_t *_sendbuf, const void *input, size_t *inlen, ptls_handshake_properties_t *properties)
{
    struct st_ptls_record_message_emitter_t emitter;
    int ret;

    FUNC1(tls->state < PTLS_STATE_POST_HANDSHAKE_MIN);

    FUNC3(tls, &emitter, _sendbuf);
    size_t sendbuf_orig_off = emitter.super.buf->off;

    /* special handlings */
    switch (tls->state) {
    case PTLS_STATE_CLIENT_HANDSHAKE_START: {
        FUNC1(input == NULL || *inlen == 0);
        FUNC1(tls->ctx->key_exchanges[0] != NULL);
        return FUNC8(tls, &emitter.super, properties, NULL);
    }
    default:
        break;
    }

    const uint8_t *src = input, *const src_end = src + *inlen;
    ptls_buffer_t decryptbuf;
    uint8_t decryptbuf_small[256];

    FUNC5(&decryptbuf, decryptbuf_small, sizeof(decryptbuf_small));

    /* perform handhake until completion or until all the input has been swallowed */
    ret = PTLS_ERROR_IN_PROGRESS;
    while (ret == PTLS_ERROR_IN_PROGRESS && src != src_end) {
        size_t consumed = src_end - src;
        ret = FUNC2(tls, &emitter.super, &decryptbuf, src, &consumed, properties);
        src += consumed;
        FUNC1(decryptbuf.off == 0);
    }

    FUNC4(&decryptbuf);

    switch (ret) {
    case 0:
    case PTLS_ERROR_IN_PROGRESS:
    case PTLS_ERROR_STATELESS_RETRY:
        break;
    default:
        /* flush partially written response */
        FUNC6(emitter.super.buf->base + sendbuf_orig_off, emitter.super.buf->off - sendbuf_orig_off);
        emitter.super.buf->off = sendbuf_orig_off;
        /* send alert immediately */
        if (FUNC0(ret) != PTLS_ERROR_CLASS_PEER_ALERT)
            if (FUNC7(tls, emitter.super.buf, PTLS_ALERT_LEVEL_FATAL,
                                FUNC0(ret) == PTLS_ERROR_CLASS_SELF_ALERT ? ret : PTLS_ALERT_INTERNAL_ERROR) != 0)
                emitter.super.buf->off = sendbuf_orig_off;
        break;
    }

    *inlen -= src_end - src;
    return ret;
}