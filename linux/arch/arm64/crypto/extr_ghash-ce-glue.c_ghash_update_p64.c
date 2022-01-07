
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;


 int __ghash_update (struct shash_desc*,int const*,unsigned int,int ) ;
 int pmull_ghash_update_p64 ;

__attribute__((used)) static int ghash_update_p64(struct shash_desc *desc, const u8 *src,
       unsigned int len)
{
 return __ghash_update(desc, src, len, pmull_ghash_update_p64);
}
