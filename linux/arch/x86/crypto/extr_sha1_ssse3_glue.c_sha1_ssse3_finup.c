
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;
typedef int sha1_transform_fn ;


 int sha1_finup (struct shash_desc*,int const*,unsigned int,int *,int *) ;
 scalar_t__ sha1_transform_ssse3 ;

__attribute__((used)) static int sha1_ssse3_finup(struct shash_desc *desc, const u8 *data,
         unsigned int len, u8 *out)
{
 return sha1_finup(desc, data, len, out,
   (sha1_transform_fn *) sha1_transform_ssse3);
}
