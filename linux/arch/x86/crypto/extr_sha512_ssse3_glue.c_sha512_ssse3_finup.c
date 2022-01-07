
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;


 int sha512_finup (struct shash_desc*,int const*,unsigned int,int *,int ) ;
 int sha512_transform_ssse3 ;

__attribute__((used)) static int sha512_ssse3_finup(struct shash_desc *desc, const u8 *data,
       unsigned int len, u8 *out)
{
 return sha512_finup(desc, data, len, out, sha512_transform_ssse3);
}
