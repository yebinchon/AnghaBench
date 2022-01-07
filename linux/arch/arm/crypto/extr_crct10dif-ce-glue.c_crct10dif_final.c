
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct shash_desc {int dummy; } ;


 int * shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int crct10dif_final(struct shash_desc *desc, u8 *out)
{
 u16 *crc = shash_desc_ctx(desc);

 *(u16 *)out = *crc;
 return 0;
}
