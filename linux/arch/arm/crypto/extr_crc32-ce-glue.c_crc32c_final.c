
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct shash_desc {int dummy; } ;


 int put_unaligned_le32 (int ,int *) ;
 int * shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int crc32c_final(struct shash_desc *desc, u8 *out)
{
 u32 *crc = shash_desc_ctx(desc);

 put_unaligned_le32(~*crc, out);
 return 0;
}
