
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;
typedef int sha1_transform_fn ;
typedef int sha1_block_fn ;


 int crypto_sha1_finup (struct shash_desc*,int const*,unsigned int,int *) ;
 int crypto_simd_usable () ;
 int kernel_fpu_begin () ;
 int kernel_fpu_end () ;
 int sha1_base_do_finalize (struct shash_desc*,int *) ;
 int sha1_base_do_update (struct shash_desc*,int const*,unsigned int,int *) ;
 int sha1_base_finish (struct shash_desc*,int *) ;

__attribute__((used)) static int sha1_finup(struct shash_desc *desc, const u8 *data,
        unsigned int len, u8 *out, sha1_transform_fn *sha1_xform)
{
 if (!crypto_simd_usable())
  return crypto_sha1_finup(desc, data, len, out);

 kernel_fpu_begin();
 if (len)
  sha1_base_do_update(desc, data, len,
        (sha1_block_fn *)sha1_xform);
 sha1_base_do_finalize(desc, (sha1_block_fn *)sha1_xform);
 kernel_fpu_end();

 return sha1_base_finish(desc, out);
}
