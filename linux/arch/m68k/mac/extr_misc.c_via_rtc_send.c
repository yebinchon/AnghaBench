
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;


 int VIA1B_vRTCClk ;
 int VIA1B_vRTCData ;
 size_t vBufB ;
 int* via1 ;

__attribute__((used)) static void via_rtc_send(__u8 data)
{
 int i, reg, bit;

 reg = via1[vBufB] & ~(VIA1B_vRTCClk | VIA1B_vRTCData);



 for (i = 0 ; i < 8 ; i++) {
  bit = data & 0x80? 1 : 0;
  data <<= 1;
  via1[vBufB] = reg | bit;
  via1[vBufB] = reg | bit | VIA1B_vRTCClk;
 }
}
