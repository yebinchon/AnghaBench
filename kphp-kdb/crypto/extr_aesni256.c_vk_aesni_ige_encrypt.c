
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ctx; } ;
struct TYPE_5__ {TYPE_1__ u; } ;
typedef TYPE_2__ vk_aes_ctx_t ;


 int aesni256_ige_encrypt (int *,unsigned char const*,unsigned char*,int,unsigned char*) ;

__attribute__((used)) static void vk_aesni_ige_encrypt (vk_aes_ctx_t *ctx, const unsigned char *in, unsigned char *out, int size, unsigned char iv[32]) {
  aesni256_ige_encrypt (&ctx->u.ctx, in, out, size, iv);
}
