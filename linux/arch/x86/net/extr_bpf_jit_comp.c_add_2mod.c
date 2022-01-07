
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 scalar_t__ is_ereg (int ) ;

__attribute__((used)) static u8 add_2mod(u8 byte, u32 r1, u32 r2)
{
 if (is_ereg(r1))
  byte |= 1;
 if (is_ereg(r2))
  byte |= 4;
 return byte;
}
