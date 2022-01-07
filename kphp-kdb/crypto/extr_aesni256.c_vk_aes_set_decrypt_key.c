
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int key; int ctx; } ;
struct TYPE_5__ {int * ctr_crypt; int ige_crypt; int cbc_crypt; TYPE_1__ u; } ;
typedef TYPE_2__ vk_aes_ctx_t ;


 int AES_set_decrypt_key (unsigned char*,int,int *) ;
 scalar_t__ aesni256_is_supported () ;
 int aesni256_set_decrypt_key (int *,unsigned char*) ;
 int vk_aesni_cbc_decrypt ;
 int vk_aesni_ige_decrypt ;
 int vk_ssl_aes_cbc_decrypt ;
 int vk_ssl_aes_ige_decrypt ;

void vk_aes_set_decrypt_key (vk_aes_ctx_t *ctx, unsigned char *key, int bits) {
  if (aesni256_is_supported () && bits == 256) {
    aesni256_set_decrypt_key (&ctx->u.ctx, key);
    ctx->cbc_crypt = vk_aesni_cbc_decrypt;
    ctx->ige_crypt = vk_aesni_ige_decrypt;
  } else {
    AES_set_decrypt_key (key, bits, &ctx->u.key);
    ctx->cbc_crypt = vk_ssl_aes_cbc_decrypt;
    ctx->ige_crypt = vk_ssl_aes_ige_decrypt;
  }
  ctx->ctr_crypt = ((void*)0);
}
