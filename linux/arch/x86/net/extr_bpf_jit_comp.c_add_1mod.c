
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 scalar_t__ is_ereg (int ) ;

__attribute__((used)) static u8 add_1mod(u8 byte, u32 reg)
{
 if (is_ereg(reg))
  byte |= 1;
 return byte;
}
