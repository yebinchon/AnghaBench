
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EIO ;
 int PRINTK_2 (int ,char*,int) ;
 int TRACE_SMAPI ;
 int smapi_request (int,int,int ,unsigned short,unsigned short*,unsigned short*,unsigned short*,unsigned short*,unsigned short*,unsigned short*) ;

int smapi_set_DSP_power_state(bool bOn)
{
 int bRC = -EIO;
 unsigned short usAX, usBX, usCX, usDX, usDI, usSI;
 unsigned short usPowerFunction;

 PRINTK_2(TRACE_SMAPI, "smapi::smapi_set_DSP_power_state entry bOn %x\n", bOn);

 usPowerFunction = (bOn) ? 1 : 0;

 bRC = smapi_request(0x4901, 0x0000, 0, usPowerFunction,
  &usAX, &usBX, &usCX, &usDX, &usDI, &usSI);

 PRINTK_2(TRACE_SMAPI, "smapi::smapi_set_DSP_power_state exit bRC %x\n", bRC);

 return bRC;
}
