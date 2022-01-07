
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct clk {int dummy; } ;
struct TYPE_3__ {int clk_num; struct clk** clks; } ;


 int AB8500_SWATCTRL ;
 int AB8500_SWATCTRL_SWATENABLE ;
 size_t AB8500_SYSCLK_AUDIO ;
 size_t AB8500_SYSCLK_BUF2 ;
 size_t AB8500_SYSCLK_BUF3 ;
 size_t AB8500_SYSCLK_BUF4 ;
 size_t AB8500_SYSCLK_INT ;
 size_t AB8500_SYSCLK_ULP ;
 int AB8500_SYSULPCLKCTRL1 ;
 int AB8500_SYSULPCLKCTRL1_AUDIOCLKENA ;
 int AB8500_SYSULPCLKCTRL1_SYSCLKBUF2REQ ;
 int AB8500_SYSULPCLKCTRL1_SYSCLKBUF3REQ ;
 int AB8500_SYSULPCLKCTRL1_SYSCLKBUF4REQ ;
 int AB8500_SYSULPCLKCTRL1_SYSULPCLKINTSEL_MASK ;
 int AB8500_SYSULPCLKCTRL1_SYSULPCLKINTSEL_SHIFT ;
 int AB8500_SYSULPCLKCTRL1_ULPCLKREQ ;
 int ARRAY_SIZE (struct clk**) ;
 TYPE_1__ ab8500_clk_data ;
 struct clk** ab8500_clks ;
 int ab8500_sysctrl_set (int ,int ) ;
 struct clk* clk_reg_sysctrl_gate (struct device*,char*,char*,int ,int ,int ,int ,int ) ;
 struct clk* clk_reg_sysctrl_gate_fixed_rate (struct device*,char*,int *,int ,int ,int ,int,int,int ) ;
 struct clk* clk_reg_sysctrl_set_parent (struct device*,char*,char const**,int,int *,int*,int*,int ) ;
 int dev_info (struct device*,char*) ;
 int of_clk_add_provider (struct device_node*,int ,TYPE_1__*) ;
 int of_clk_src_onecell_get ;

__attribute__((used)) static int ab8500_reg_clks(struct device *dev)
{
 int ret;
 struct clk *clk;
 struct device_node *np = dev->of_node;
 const char *intclk_parents[] = {"ab8500_sysclk", "ulpclk"};
 u16 intclk_reg_sel[] = {0 , AB8500_SYSULPCLKCTRL1};
 u8 intclk_reg_mask[] = {0 , AB8500_SYSULPCLKCTRL1_SYSULPCLKINTSEL_MASK};
 u8 intclk_reg_bits[] = {
  0 ,
  (1 << AB8500_SYSULPCLKCTRL1_SYSULPCLKINTSEL_SHIFT)
 };


 ret = ab8500_sysctrl_set(AB8500_SWATCTRL, AB8500_SWATCTRL_SWATENABLE);
 if (ret)
  return ret;


 clk = clk_reg_sysctrl_gate(dev , "ab8500_sysclk2", "ab8500_sysclk",
  AB8500_SYSULPCLKCTRL1, AB8500_SYSULPCLKCTRL1_SYSCLKBUF2REQ,
  AB8500_SYSULPCLKCTRL1_SYSCLKBUF2REQ, 0, 0);
 ab8500_clks[AB8500_SYSCLK_BUF2] = clk;


 clk = clk_reg_sysctrl_gate(dev , "ab8500_sysclk3", "ab8500_sysclk",
  AB8500_SYSULPCLKCTRL1, AB8500_SYSULPCLKCTRL1_SYSCLKBUF3REQ,
  AB8500_SYSULPCLKCTRL1_SYSCLKBUF3REQ, 0, 0);
 ab8500_clks[AB8500_SYSCLK_BUF3] = clk;


 clk = clk_reg_sysctrl_gate(dev , "ab8500_sysclk4", "ab8500_sysclk",
  AB8500_SYSULPCLKCTRL1, AB8500_SYSULPCLKCTRL1_SYSCLKBUF4REQ,
  AB8500_SYSULPCLKCTRL1_SYSCLKBUF4REQ, 0, 0);
 ab8500_clks[AB8500_SYSCLK_BUF4] = clk;


 clk = clk_reg_sysctrl_gate_fixed_rate(dev, "ulpclk", ((void*)0),
  AB8500_SYSULPCLKCTRL1, AB8500_SYSULPCLKCTRL1_ULPCLKREQ,
  AB8500_SYSULPCLKCTRL1_ULPCLKREQ,
  38400000, 9000, 0);
 ab8500_clks[AB8500_SYSCLK_ULP] = clk;


 clk = clk_reg_sysctrl_set_parent(dev , "intclk", intclk_parents, 2,
  intclk_reg_sel, intclk_reg_mask, intclk_reg_bits, 0);
 ab8500_clks[AB8500_SYSCLK_INT] = clk;


 clk = clk_reg_sysctrl_gate(dev , "audioclk", "intclk",
  AB8500_SYSULPCLKCTRL1, AB8500_SYSULPCLKCTRL1_AUDIOCLKENA,
  AB8500_SYSULPCLKCTRL1_AUDIOCLKENA, 0, 0);
 ab8500_clks[AB8500_SYSCLK_AUDIO] = clk;

 ab8500_clk_data.clks = ab8500_clks;
 ab8500_clk_data.clk_num = ARRAY_SIZE(ab8500_clks);
 of_clk_add_provider(np, of_clk_src_onecell_get, &ab8500_clk_data);

 dev_info(dev, "registered clocks for ab850x\n");

 return 0;
}
