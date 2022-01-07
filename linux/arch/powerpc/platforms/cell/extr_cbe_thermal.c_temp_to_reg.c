
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int TEMP_MIN ;

__attribute__((used)) static inline u8 temp_to_reg(u8 temp)
{
 return ((temp - TEMP_MIN) >> 1) & 0x3f;
}
