
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;



__attribute__((used)) static bool is_uimm32(u64 value)
{
 return value == (u64)(u32)value;
}
