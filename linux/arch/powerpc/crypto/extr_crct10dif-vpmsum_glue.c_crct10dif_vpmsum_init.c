
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct shash_desc {int dummy; } ;


 scalar_t__* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int crct10dif_vpmsum_init(struct shash_desc *desc)
{
 u16 *crc = shash_desc_ctx(desc);

 *crc = 0;
 return 0;
}
