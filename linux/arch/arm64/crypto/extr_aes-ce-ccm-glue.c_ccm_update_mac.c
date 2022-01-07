
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;
struct crypto_aes_ctx {int key_enc; } ;


 size_t AES_BLOCK_SIZE ;
 int aes_encrypt (struct crypto_aes_ctx*,int *,int *) ;
 int ce_aes_ccm_auth_data (int *,int const*,size_t,size_t*,int ,int ) ;
 scalar_t__ crypto_simd_usable () ;
 int crypto_xor (int *,int const*,size_t) ;
 int kernel_neon_begin () ;
 int kernel_neon_end () ;
 int min (size_t,size_t) ;
 int num_rounds (struct crypto_aes_ctx*) ;

__attribute__((used)) static void ccm_update_mac(struct crypto_aes_ctx *key, u8 mac[], u8 const in[],
      u32 abytes, u32 *macp)
{
 if (crypto_simd_usable()) {
  kernel_neon_begin();
  ce_aes_ccm_auth_data(mac, in, abytes, macp, key->key_enc,
         num_rounds(key));
  kernel_neon_end();
 } else {
  if (*macp > 0 && *macp < AES_BLOCK_SIZE) {
   int added = min(abytes, AES_BLOCK_SIZE - *macp);

   crypto_xor(&mac[*macp], in, added);

   *macp += added;
   in += added;
   abytes -= added;
  }

  while (abytes >= AES_BLOCK_SIZE) {
   aes_encrypt(key, mac, mac);
   crypto_xor(mac, in, AES_BLOCK_SIZE);

   in += AES_BLOCK_SIZE;
   abytes -= AES_BLOCK_SIZE;
  }

  if (abytes > 0) {
   aes_encrypt(key, mac, mac);
   crypto_xor(mac, in, abytes);
   *macp = abytes;
  }
 }
}
