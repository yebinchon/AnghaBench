
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned long u64 ;
typedef unsigned long u32 ;
typedef int u16 ;



__attribute__((used)) static void assign_register(unsigned long *reg, u64 val, int bytes)
{

 switch (bytes) {
 case 1:
  *(u8 *)reg = (u8)val;
  break;
 case 2:
  *(u16 *)reg = (u16)val;
  break;
 case 4:
  *reg = (u32)val;
  break;
 case 8:
  *reg = val;
  break;
 }
}
