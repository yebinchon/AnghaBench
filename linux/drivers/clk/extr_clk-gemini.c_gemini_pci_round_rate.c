
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;



__attribute__((used)) static long gemini_pci_round_rate(struct clk_hw *hw, unsigned long rate,
      unsigned long *prate)
{

 if (rate < 48000000)
  return 33000000;
 return 66000000;
}
