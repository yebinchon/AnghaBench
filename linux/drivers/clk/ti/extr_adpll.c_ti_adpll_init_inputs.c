
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ti_adpll_data {struct clk** parent_clocks; int dev; int * parent_names; TYPE_1__* c; int np; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {int nr_max_inputs; scalar_t__ is_type_s; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 size_t TI_ADPLL_CLKINP ;
 size_t TI_ADPLL_CLKINPHIF ;
 size_t TI_ADPLL_CLKINPULOW ;
 int dev_err (int ,char const*,...) ;
 struct clk* devm_clk_get (int ,int ) ;
 int of_clk_get_parent_count (int ) ;
 int of_clk_parent_fill (int ,int *,int) ;

__attribute__((used)) static int ti_adpll_init_inputs(struct ti_adpll_data *d)
{
 const char *error = "need at least %i inputs";
 struct clk *clock;
 int nr_inputs;

 nr_inputs = of_clk_get_parent_count(d->np);
 if (nr_inputs < d->c->nr_max_inputs) {
  dev_err(d->dev, error, nr_inputs);
  return -EINVAL;
 }
 of_clk_parent_fill(d->np, d->parent_names, nr_inputs);

 clock = devm_clk_get(d->dev, d->parent_names[0]);
 if (IS_ERR(clock)) {
  dev_err(d->dev, "could not get clkinp\n");
  return PTR_ERR(clock);
 }
 d->parent_clocks[TI_ADPLL_CLKINP] = clock;

 clock = devm_clk_get(d->dev, d->parent_names[1]);
 if (IS_ERR(clock)) {
  dev_err(d->dev, "could not get clkinpulow clock\n");
  return PTR_ERR(clock);
 }
 d->parent_clocks[TI_ADPLL_CLKINPULOW] = clock;

 if (d->c->is_type_s) {
  clock = devm_clk_get(d->dev, d->parent_names[2]);
  if (IS_ERR(clock)) {
   dev_err(d->dev, "could not get clkinphif clock\n");
   return PTR_ERR(clock);
  }
  d->parent_clocks[TI_ADPLL_CLKINPHIF] = clock;
 }

 return 0;
}
