
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl8366_smi {int dummy; } ;


 int rtl8366_smi_write_bits (struct rtl8366_smi*,int ,int) ;

__attribute__((used)) static int rtl8366_smi_write_byte_noack(struct rtl8366_smi *smi, u8 data)
{
 rtl8366_smi_write_bits(smi, data, 8);
 return 0;
}
