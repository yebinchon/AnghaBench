
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long bits; } ;


 unsigned long get_align_mask () ;
 TYPE_1__ va_align ;

__attribute__((used)) static unsigned long get_align_bits(void)
{
 return va_align.bits & get_align_mask();
}
