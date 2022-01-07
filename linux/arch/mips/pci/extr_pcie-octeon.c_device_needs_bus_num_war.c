
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int IDT_VENDOR_ID ;

__attribute__((used)) static int device_needs_bus_num_war(uint32_t deviceid)
{


 if ((deviceid & 0xffff) == 0x111d)
  return 1;
 return 0;
}
