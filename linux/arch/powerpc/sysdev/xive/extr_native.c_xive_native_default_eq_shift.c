
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int xive_queue_shift ;

u32 xive_native_default_eq_shift(void)
{
 return xive_queue_shift;
}
