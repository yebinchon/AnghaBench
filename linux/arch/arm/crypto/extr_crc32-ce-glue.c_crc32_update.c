
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct shash_desc {int dummy; } ;


 int crc32_armv8_le (int ,int const*,unsigned int) ;
 int * shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int crc32_update(struct shash_desc *desc, const u8 *data,
   unsigned int length)
{
 u32 *crc = shash_desc_ctx(desc);

 *crc = crc32_armv8_le(*crc, data, length);
 return 0;
}
