
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;


 int __crc32_finup (int ,int const*,unsigned int,int *) ;
 int shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int crc32_finup(struct shash_desc *desc, const u8 *data,
         unsigned int len, u8 *out)
{
 return __crc32_finup(shash_desc_ctx(desc), data, len, out);
}
