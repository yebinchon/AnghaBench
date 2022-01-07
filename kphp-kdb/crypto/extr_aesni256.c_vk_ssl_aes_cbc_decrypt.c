
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int key; } ;
struct TYPE_5__ {TYPE_1__ u; } ;
typedef TYPE_2__ vk_aes_ctx_t ;


 int AES_DECRYPT ;
 int AES_cbc_encrypt (unsigned char const*,unsigned char*,int,int *,unsigned char*,int ) ;

__attribute__((used)) static void vk_ssl_aes_cbc_decrypt (vk_aes_ctx_t *ctx, const unsigned char *in, unsigned char *out, int size, unsigned char iv[16]){
  AES_cbc_encrypt (in, out, size, &ctx->u.key, iv, AES_DECRYPT);
}
