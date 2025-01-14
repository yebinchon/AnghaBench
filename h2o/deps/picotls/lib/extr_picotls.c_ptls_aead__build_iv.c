
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint64_t ;
struct TYPE_5__ {int* static_iv; TYPE_1__* algo; } ;
typedef TYPE_2__ ptls_aead_context_t ;
struct TYPE_4__ {size_t iv_size; } ;



void ptls_aead__build_iv(ptls_aead_context_t *ctx, uint8_t *iv, uint64_t seq)
{
    size_t iv_size = ctx->algo->iv_size, i;
    const uint8_t *s = ctx->static_iv;
    uint8_t *d = iv;


    for (i = iv_size - 8; i != 0; --i)
        *d++ = *s++;
    i = 64;
    do {
        i -= 8;
        *d++ = *s++ ^ (uint8_t)(seq >> i);
    } while (i != 0);
}
