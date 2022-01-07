
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;


 int crypto_simd_usable () ;
 int crypto_sm3_update (struct shash_desc*,int const*,unsigned int) ;
 int kernel_neon_begin () ;
 int kernel_neon_end () ;
 int sm3_base_do_update (struct shash_desc*,int const*,unsigned int,int ) ;
 int sm3_ce_transform ;

__attribute__((used)) static int sm3_ce_update(struct shash_desc *desc, const u8 *data,
    unsigned int len)
{
 if (!crypto_simd_usable())
  return crypto_sm3_update(desc, data, len);

 kernel_neon_begin();
 sm3_base_do_update(desc, data, len, sm3_ce_transform);
 kernel_neon_end();

 return 0;
}
