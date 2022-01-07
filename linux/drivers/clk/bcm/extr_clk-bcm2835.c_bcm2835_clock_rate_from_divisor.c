
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long u64 ;
typedef int u32 ;
struct bcm2835_clock_data {int int_bits; int frac_bits; } ;
struct bcm2835_clock {struct bcm2835_clock_data* data; } ;


 int CM_DIV_FRAC_BITS ;
 int do_div (long,int) ;

__attribute__((used)) static long bcm2835_clock_rate_from_divisor(struct bcm2835_clock *clock,
         unsigned long parent_rate,
         u32 div)
{
 const struct bcm2835_clock_data *data = clock->data;
 u64 temp;

 if (data->int_bits == 0 && data->frac_bits == 0)
  return parent_rate;





 div >>= CM_DIV_FRAC_BITS - data->frac_bits;
 div &= (1 << (data->int_bits + data->frac_bits)) - 1;

 if (div == 0)
  return 0;

 temp = (u64)parent_rate << data->frac_bits;

 do_div(temp, div);

 return temp;
}
