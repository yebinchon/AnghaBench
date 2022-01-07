
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;



__attribute__((used)) static int bcm2835_vpu_clock_is_on(struct clk_hw *hw)
{
 return 1;
}
