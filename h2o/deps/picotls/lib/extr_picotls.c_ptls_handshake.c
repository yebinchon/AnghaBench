
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_20__ {TYPE_7__* buf; } ;
struct st_ptls_record_message_emitter_t {TYPE_5__ super; } ;
struct TYPE_18__ {int state; TYPE_1__* ctx; } ;
typedef TYPE_2__ ptls_t ;
typedef int ptls_handshake_properties_t ;
struct TYPE_19__ {scalar_t__ off; } ;
typedef TYPE_3__ ptls_buffer_t ;
typedef int decryptbuf_small ;
struct TYPE_21__ {size_t off; int base; } ;
struct TYPE_17__ {int ** key_exchanges; } ;


 int PTLS_ALERT_INTERNAL_ERROR ;
 int PTLS_ALERT_LEVEL_FATAL ;
 int PTLS_ERROR_CLASS_PEER_ALERT ;
 int PTLS_ERROR_CLASS_SELF_ALERT ;
 int PTLS_ERROR_GET_CLASS (int) ;



 int PTLS_STATE_POST_HANDSHAKE_MIN ;
 int assert (int) ;
 int handle_input (TYPE_2__*,TYPE_5__*,TYPE_3__*,int const*,size_t*,int *) ;
 int init_record_message_emmitter (TYPE_2__*,struct st_ptls_record_message_emitter_t*,TYPE_3__*) ;
 int ptls_buffer_dispose (TYPE_3__*) ;
 int ptls_buffer_init (TYPE_3__*,int *,int) ;
 int ptls_clear_memory (int ,size_t) ;
 int ptls_send_alert (TYPE_2__*,TYPE_7__*,int ,int) ;
 int send_client_hello (TYPE_2__*,TYPE_5__*,int *,int *) ;

int ptls_handshake(ptls_t *tls, ptls_buffer_t *_sendbuf, const void *input, size_t *inlen, ptls_handshake_properties_t *properties)
{
    struct st_ptls_record_message_emitter_t emitter;
    int ret;

    assert(tls->state < PTLS_STATE_POST_HANDSHAKE_MIN);

    init_record_message_emmitter(tls, &emitter, _sendbuf);
    size_t sendbuf_orig_off = emitter.super.buf->off;


    switch (tls->state) {
    case 128: {
        assert(input == ((void*)0) || *inlen == 0);
        assert(tls->ctx->key_exchanges[0] != ((void*)0));
        return send_client_hello(tls, &emitter.super, properties, ((void*)0));
    }
    default:
        break;
    }

    const uint8_t *src = input, *const src_end = src + *inlen;
    ptls_buffer_t decryptbuf;
    uint8_t decryptbuf_small[256];

    ptls_buffer_init(&decryptbuf, decryptbuf_small, sizeof(decryptbuf_small));


    ret = 130;
    while (ret == 130 && src != src_end) {
        size_t consumed = src_end - src;
        ret = handle_input(tls, &emitter.super, &decryptbuf, src, &consumed, properties);
        src += consumed;
        assert(decryptbuf.off == 0);
    }

    ptls_buffer_dispose(&decryptbuf);

    switch (ret) {
    case 0:
    case 130:
    case 129:
        break;
    default:

        ptls_clear_memory(emitter.super.buf->base + sendbuf_orig_off, emitter.super.buf->off - sendbuf_orig_off);
        emitter.super.buf->off = sendbuf_orig_off;

        if (PTLS_ERROR_GET_CLASS(ret) != PTLS_ERROR_CLASS_PEER_ALERT)
            if (ptls_send_alert(tls, emitter.super.buf, PTLS_ALERT_LEVEL_FATAL,
                                PTLS_ERROR_GET_CLASS(ret) == PTLS_ERROR_CLASS_SELF_ALERT ? ret : PTLS_ALERT_INTERNAL_ERROR) != 0)
                emitter.super.buf->off = sendbuf_orig_off;
        break;
    }

    *inlen -= src_end - src;
    return ret;
}
