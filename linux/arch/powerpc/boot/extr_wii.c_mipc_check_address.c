
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;

__attribute__((used)) static int mipc_check_address(u32 pa)
{

 if (pa < 0x10000000 || pa > 0x14000000)
  return -EINVAL;
 return 0;
}
