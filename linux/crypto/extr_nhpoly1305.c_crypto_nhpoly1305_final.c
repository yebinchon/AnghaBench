
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;


 int crypto_nhpoly1305_final_helper (struct shash_desc*,int *,int ) ;
 int nh_generic ;

int crypto_nhpoly1305_final(struct shash_desc *desc, u8 *dst)
{
 return crypto_nhpoly1305_final_helper(desc, dst, nh_generic);
}
