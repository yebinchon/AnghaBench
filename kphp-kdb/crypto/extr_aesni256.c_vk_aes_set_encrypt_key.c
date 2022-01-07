
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int key; int ctx; } ;
struct TYPE_5__ {int ctr_crypt; int ige_crypt; int cbc_crypt; TYPE_1__ u; } ;
typedef TYPE_2__ vk_aes_ctx_t ;


 int AES_set_encrypt_key (unsigned char*,int,int *) ;
 scalar_t__ aesni256_is_supported () ;
 int aesni256_set_encrypt_key (int *,unsigned char*) ;
 int vk_aesni_cbc_encrypt ;
 int vk_aesni_ctr_crypt ;
 int vk_aesni_ige_encrypt ;
 int vk_ssl_aes_cbc_encrypt ;
 int vk_ssl_aes_ctr_crypt ;
 int vk_ssl_aes_ige_encrypt ;

void vk_aes_set_encrypt_key (vk_aes_ctx_t *ctx, unsigned char *key, int bits) {
  if (aesni256_is_supported () && bits == 256) {
    aesni256_set_encrypt_key (&ctx->u.ctx, key);
    ctx->cbc_crypt = vk_aesni_cbc_encrypt;
    ctx->ige_crypt = vk_aesni_ige_encrypt;
    ctx->ctr_crypt = vk_aesni_ctr_crypt;
  } else {
    AES_set_encrypt_key (key, bits, &ctx->u.key);
    ctx->cbc_crypt = vk_ssl_aes_cbc_encrypt;
    ctx->ige_crypt = vk_ssl_aes_ige_encrypt;
    ctx->ctr_crypt = vk_ssl_aes_ctr_crypt;
  }
}
