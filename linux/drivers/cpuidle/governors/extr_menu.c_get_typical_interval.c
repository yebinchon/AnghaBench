
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint64_t ;
typedef unsigned int u64 ;
struct menu_device {unsigned int* intervals; } ;
typedef unsigned int int64_t ;


 int INTERVALS ;
 unsigned int INTERVAL_SHIFT ;
 unsigned int INT_MAX ;
 int U64_MAX ;
 unsigned int UINT_MAX ;
 unsigned int div_u64 (unsigned int,int) ;
 int do_div (unsigned int,int) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static unsigned int get_typical_interval(struct menu_device *data,
      unsigned int predicted_us)
{
 int i, divisor;
 unsigned int min, max, thresh, avg;
 uint64_t sum, variance;

 thresh = INT_MAX;

again:


 min = UINT_MAX;
 max = 0;
 sum = 0;
 divisor = 0;
 for (i = 0; i < INTERVALS; i++) {
  unsigned int value = data->intervals[i];
  if (value <= thresh) {
   sum += value;
   divisor++;
   if (value > max)
    max = value;

   if (value < min)
    min = value;
  }
 }





 if (min >= predicted_us)
  return UINT_MAX;

 if (divisor == INTERVALS)
  avg = sum >> INTERVAL_SHIFT;
 else
  avg = div_u64(sum, divisor);


 variance = 0;
 for (i = 0; i < INTERVALS; i++) {
  unsigned int value = data->intervals[i];
  if (value <= thresh) {
   int64_t diff = (int64_t)value - avg;
   variance += diff * diff;
  }
 }
 if (divisor == INTERVALS)
  variance >>= INTERVAL_SHIFT;
 else
  do_div(variance, divisor);
 if (likely(variance <= U64_MAX/36)) {
  if ((((u64)avg*avg > variance*36) && (divisor * 4 >= INTERVALS * 3))
       || variance <= 400) {
   return avg;
  }
 }
 if ((divisor * 4) <= INTERVALS * 3)
  return UINT_MAX;

 thresh = max - 1;
 goto again;
}
