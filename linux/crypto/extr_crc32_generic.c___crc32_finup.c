
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int crc32_le (int ,int const*,unsigned int) ;
 int put_unaligned_le32 (int ,int *) ;

__attribute__((used)) static int __crc32_finup(u32 *crcp, const u8 *data, unsigned int len,
    u8 *out)
{
 put_unaligned_le32(crc32_le(*crcp, data, len), out);
 return 0;
}
