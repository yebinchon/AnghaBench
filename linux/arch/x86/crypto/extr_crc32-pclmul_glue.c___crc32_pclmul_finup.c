
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int __le32 ;


 int cpu_to_le32 (int ) ;
 int crc32_pclmul_le (int ,int const*,unsigned int) ;

__attribute__((used)) static int __crc32_pclmul_finup(u32 *crcp, const u8 *data, unsigned int len,
    u8 *out)
{
 *(__le32 *)out = cpu_to_le32(crc32_pclmul_le(*crcp, data, len));
 return 0;
}
