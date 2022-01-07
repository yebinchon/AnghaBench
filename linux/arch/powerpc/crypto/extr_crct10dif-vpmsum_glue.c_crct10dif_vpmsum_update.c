
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct shash_desc {int dummy; } ;


 int crct10dif_vpmsum (int ,int const*,unsigned int) ;
 int * shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int crct10dif_vpmsum_update(struct shash_desc *desc, const u8 *data,
       unsigned int length)
{
 u16 *crc = shash_desc_ctx(desc);

 *crc = crct10dif_vpmsum(*crc, data, length);

 return 0;
}
