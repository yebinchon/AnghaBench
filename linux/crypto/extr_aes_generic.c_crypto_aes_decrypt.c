
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct crypto_tfm {int dummy; } ;
struct crypto_aes_ctx {int key_length; int* key_dec; } ;


 struct crypto_aes_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int get_unaligned_le32 (int const*) ;
 int i_lround (int*,int*,int const*) ;
 int i_nround (int*,int*,int const*) ;
 int put_unaligned_le32 (int,int *) ;

__attribute__((used)) static void crypto_aes_decrypt(struct crypto_tfm *tfm, u8 *out, const u8 *in)
{
 const struct crypto_aes_ctx *ctx = crypto_tfm_ctx(tfm);
 u32 b0[4], b1[4];
 const int key_len = ctx->key_length;
 const u32 *kp = ctx->key_dec + 4;

 b0[0] = ctx->key_dec[0] ^ get_unaligned_le32(in);
 b0[1] = ctx->key_dec[1] ^ get_unaligned_le32(in + 4);
 b0[2] = ctx->key_dec[2] ^ get_unaligned_le32(in + 8);
 b0[3] = ctx->key_dec[3] ^ get_unaligned_le32(in + 12);

 if (key_len > 24) {
  i_nround(b1, b0, kp);
  i_nround(b0, b1, kp);
 }

 if (key_len > 16) {
  i_nround(b1, b0, kp);
  i_nround(b0, b1, kp);
 }

 i_nround(b1, b0, kp);
 i_nround(b0, b1, kp);
 i_nround(b1, b0, kp);
 i_nround(b0, b1, kp);
 i_nround(b1, b0, kp);
 i_nround(b0, b1, kp);
 i_nround(b1, b0, kp);
 i_nround(b0, b1, kp);
 i_nround(b1, b0, kp);
 i_lround(b0, b1, kp);

 put_unaligned_le32(b0[0], out);
 put_unaligned_le32(b0[1], out + 4);
 put_unaligned_le32(b0[2], out + 8);
 put_unaligned_le32(b0[3], out + 12);
}
