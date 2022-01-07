
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;


 int sha512_transform_ssse3 ;
 int sha512_update (struct shash_desc*,int const*,unsigned int,int ) ;

__attribute__((used)) static int sha512_ssse3_update(struct shash_desc *desc, const u8 *data,
         unsigned int len)
{
 return sha512_update(desc, data, len, sha512_transform_ssse3);
}
