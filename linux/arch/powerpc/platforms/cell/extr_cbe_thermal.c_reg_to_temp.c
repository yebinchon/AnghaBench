
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int TEMP_MIN ;

__attribute__((used)) static inline u8 reg_to_temp(u8 reg_value)
{
 return ((reg_value & 0x3f) << 1) + TEMP_MIN;
}
