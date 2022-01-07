
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vk_aes_ctx {int dummy; } ;
struct raw_message {int dummy; } ;


 int _rwm_encrypt_decrypt (struct raw_message*,int,struct vk_aes_ctx*,int ,unsigned char*) ;

int rwm_encrypt_decrypt (struct raw_message *raw, int bytes, struct vk_aes_ctx *ctx, unsigned char iv[32]) {
  return _rwm_encrypt_decrypt (raw, bytes, ctx, 0, iv);
}
