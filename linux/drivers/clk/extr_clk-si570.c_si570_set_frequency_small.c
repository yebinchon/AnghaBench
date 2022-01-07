
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_si570 {unsigned long rfreq; int regmap; int frequency; } ;


 int SI570_CNTRL_FREEZE_M ;
 int SI570_REG_CONTROL ;
 unsigned long div64_u64 (scalar_t__,int ) ;
 scalar_t__ div_u64 (int ,int) ;
 int regmap_write (int ,int ,int ) ;
 int si570_update_rfreq (struct clk_si570*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int si570_set_frequency_small(struct clk_si570 *data,
         unsigned long frequency)
{





 data->rfreq = div64_u64((data->rfreq * frequency) +
   div_u64(data->frequency, 2), data->frequency);
 regmap_write(data->regmap, SI570_REG_CONTROL, SI570_CNTRL_FREEZE_M);
 si570_update_rfreq(data);
 regmap_write(data->regmap, SI570_REG_CONTROL, 0);


 usleep_range(100, 200);

 return 0;
}
