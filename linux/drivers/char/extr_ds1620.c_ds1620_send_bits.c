
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int netwinder_ds1620_set_clk (int) ;
 int netwinder_ds1620_set_data (int) ;
 int udelay (int) ;

__attribute__((used)) static void ds1620_send_bits(int nr, int value)
{
 int i;

 for (i = 0; i < nr; i++) {
  netwinder_ds1620_set_data(value & 1);
  netwinder_ds1620_set_clk(0);
  udelay(1);
  netwinder_ds1620_set_clk(1);
  udelay(1);

  value >>= 1;
 }
}
