
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int clk_num; struct clk** clks; } ;
struct ti_adpll_data {int pa; TYPE_2__ outputs; int dev; TYPE_1__* clocks; } ;
struct clk_lookup {int dummy; } ;
struct clk {int dummy; } ;
struct TYPE_3__ {void (* unregister ) (struct clk*) ;struct clk_lookup* cl; struct clk* clk; } ;


 int ADPLL_MAX_CON_ID ;
 int ENOMEM ;
 struct clk_lookup* clkdev_create (struct clk*,char*,int *) ;
 int dev_warn (int ,char*,char const*) ;
 int snprintf (char*,int,char*,int,char const*) ;
 int strlen (char const*) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static int ti_adpll_setup_clock(struct ti_adpll_data *d, struct clk *clock,
    int index, int output_index, const char *name,
    void (*unregister)(struct clk *clk))
{
 struct clk_lookup *cl;
 const char *postfix = ((void*)0);
 char con_id[ADPLL_MAX_CON_ID];

 d->clocks[index].clk = clock;
 d->clocks[index].unregister = unregister;


 postfix = strrchr(name, '.');
 if (postfix && strlen(postfix) > 1) {
  if (strlen(postfix) > ADPLL_MAX_CON_ID)
   dev_warn(d->dev, "clock %s con_id lookup may fail\n",
     name);
  snprintf(con_id, 16, "pll%03lx%s", d->pa & 0xfff, postfix + 1);
  cl = clkdev_create(clock, con_id, ((void*)0));
  if (!cl)
   return -ENOMEM;
  d->clocks[index].cl = cl;
 } else {
  dev_warn(d->dev, "no con_id for clock %s\n", name);
 }

 if (output_index < 0)
  return 0;

 d->outputs.clks[output_index] = clock;
 d->outputs.clk_num++;

 return 0;
}
