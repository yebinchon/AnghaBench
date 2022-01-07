
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct shash_desc {int dummy; } ;


 unsigned int CRC_T10DIF_PMULL_CHUNK_SIZE ;
 int crc_t10dif_generic (int ,int const*,unsigned int) ;
 int crc_t10dif_pmull (int ,int const*,unsigned int) ;
 scalar_t__ crypto_simd_usable () ;
 int kernel_neon_begin () ;
 int kernel_neon_end () ;
 int * shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int crct10dif_update(struct shash_desc *desc, const u8 *data,
       unsigned int length)
{
 u16 *crc = shash_desc_ctx(desc);

 if (length >= CRC_T10DIF_PMULL_CHUNK_SIZE && crypto_simd_usable()) {
  kernel_neon_begin();
  *crc = crc_t10dif_pmull(*crc, data, length);
  kernel_neon_end();
 } else {
  *crc = crc_t10dif_generic(*crc, data, length);
 }

 return 0;
}
