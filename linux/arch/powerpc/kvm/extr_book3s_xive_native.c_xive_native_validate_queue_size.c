
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;

__attribute__((used)) static int xive_native_validate_queue_size(u32 qshift)
{




 switch (qshift) {
 case 0:
 case 16:
  return 0;
 case 12:
 case 21:
 case 24:
 default:
  return -EINVAL;
 }
}
