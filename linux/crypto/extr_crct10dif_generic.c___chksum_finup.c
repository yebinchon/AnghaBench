
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int __u16 ;


 int crc_t10dif_generic (int ,int const*,unsigned int) ;

__attribute__((used)) static int __chksum_finup(__u16 crc, const u8 *data, unsigned int len, u8 *out)
{
 *(__u16 *)out = crc_t10dif_generic(crc, data, len);
 return 0;
}
