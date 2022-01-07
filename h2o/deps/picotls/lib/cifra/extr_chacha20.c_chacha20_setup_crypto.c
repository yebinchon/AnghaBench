
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int do_transform; int do_init; int do_dispose; } ;
struct chacha20_context_t {int chacha; TYPE_1__ super; } ;
typedef int ptls_cipher_context_t ;


 int PTLS_CHACHA20_KEY_SIZE ;
 int cf_chacha20_init (int *,void const*,int ,int const*) ;
 int chacha20_dispose ;
 int chacha20_init ;
 int chacha20_transform ;

__attribute__((used)) static int chacha20_setup_crypto(ptls_cipher_context_t *_ctx, int is_enc, const void *key)
{
    struct chacha20_context_t *ctx = (struct chacha20_context_t *)_ctx;
    ctx->super.do_dispose = chacha20_dispose;
    ctx->super.do_init = chacha20_init;
    ctx->super.do_transform = chacha20_transform;
    cf_chacha20_init(&ctx->chacha, key, PTLS_CHACHA20_KEY_SIZE, (const uint8_t *)"01234567" );
    return 0;
}
