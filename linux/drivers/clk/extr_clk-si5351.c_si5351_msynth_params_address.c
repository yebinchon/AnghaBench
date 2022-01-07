
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ SI5351_CLK0_PARAMETERS ;
 scalar_t__ SI5351_CLK6_PARAMETERS ;
 int SI5351_PARAMETERS_LENGTH ;

__attribute__((used)) static inline u8 si5351_msynth_params_address(int num)
{
 if (num > 5)
  return SI5351_CLK6_PARAMETERS + (num - 6);
 return SI5351_CLK0_PARAMETERS + (SI5351_PARAMETERS_LENGTH * num);
}
