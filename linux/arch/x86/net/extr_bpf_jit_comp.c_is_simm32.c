
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ s64 ;
typedef scalar_t__ s32 ;



__attribute__((used)) static bool is_simm32(s64 value)
{
 return value == (s64)(s32)value;
}
