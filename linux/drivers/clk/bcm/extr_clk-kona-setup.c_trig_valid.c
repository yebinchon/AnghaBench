
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_clk_trig {int bit; } ;


 int bit_posn_valid (int ,char const*,char const*) ;

__attribute__((used)) static bool trig_valid(struct bcm_clk_trig *trig, const char *field_name,
   const char *clock_name)
{
 return bit_posn_valid(trig->bit, field_name, clock_name);
}
