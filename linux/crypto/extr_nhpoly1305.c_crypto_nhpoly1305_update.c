
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;


 int crypto_nhpoly1305_update_helper (struct shash_desc*,int const*,unsigned int,int ) ;
 int nh_generic ;

int crypto_nhpoly1305_update(struct shash_desc *desc,
        const u8 *src, unsigned int srclen)
{
 return crypto_nhpoly1305_update_helper(desc, src, srclen, nh_generic);
}
