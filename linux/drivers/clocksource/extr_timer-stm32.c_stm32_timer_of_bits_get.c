
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_of {struct stm32_timer_private* private_data; } ;
struct stm32_timer_private {int bits; } ;



__attribute__((used)) static int stm32_timer_of_bits_get(struct timer_of *to)
{
 struct stm32_timer_private *pd = to->private_data;

 return pd->bits;
}
