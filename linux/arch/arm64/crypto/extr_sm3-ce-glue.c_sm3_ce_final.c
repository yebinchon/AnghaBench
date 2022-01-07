
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;


 int crypto_simd_usable () ;
 int crypto_sm3_finup (struct shash_desc*,int *,int ,int *) ;
 int kernel_neon_begin () ;
 int kernel_neon_end () ;
 int sm3_base_do_finalize (struct shash_desc*,int ) ;
 int sm3_base_finish (struct shash_desc*,int *) ;
 int sm3_ce_transform ;

__attribute__((used)) static int sm3_ce_final(struct shash_desc *desc, u8 *out)
{
 if (!crypto_simd_usable())
  return crypto_sm3_finup(desc, ((void*)0), 0, out);

 kernel_neon_begin();
 sm3_base_do_finalize(desc, sm3_ce_transform);
 kernel_neon_end();

 return sm3_base_finish(desc, out);
}
