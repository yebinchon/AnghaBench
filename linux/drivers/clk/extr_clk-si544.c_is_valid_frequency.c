
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_si544 {int speed_grade; } ;


 unsigned long SI544_MIN_FREQ ;




__attribute__((used)) static bool is_valid_frequency(const struct clk_si544 *data,
 unsigned long frequency)
{
 unsigned long max_freq = 0;

 if (frequency < SI544_MIN_FREQ)
  return 0;

 switch (data->speed_grade) {
 case 130:
  max_freq = 1500000000;
  break;
 case 129:
  max_freq = 800000000;
  break;
 case 128:
  max_freq = 350000000;
  break;
 }

 return frequency <= max_freq;
}
