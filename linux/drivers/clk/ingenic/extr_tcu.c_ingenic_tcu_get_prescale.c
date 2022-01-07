
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static u8 ingenic_tcu_get_prescale(unsigned long rate, unsigned long req_rate)
{
 u8 prescale;

 for (prescale = 0; prescale < 5; prescale++)
  if ((rate >> (prescale * 2)) <= req_rate)
   return prescale;

 return 5;
}
