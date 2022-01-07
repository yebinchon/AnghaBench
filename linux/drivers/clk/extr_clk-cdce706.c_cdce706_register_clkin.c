
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct clk_init_data {unsigned int num_parents; TYPE_2__* parent_names; int * ops; } ;
struct clk {int dummy; } ;
struct cdce706_dev_data {TYPE_2__* clkin; struct clk** clkin_clk; TYPE_2__* clkin_name; TYPE_1__* client; } ;
struct TYPE_8__ {int parent; } ;
struct TYPE_7__ {int dev; } ;


 unsigned int ARRAY_SIZE (TYPE_2__*) ;
 int CDCE706_CLKIN_CLOCK ;
 unsigned int CDCE706_CLKIN_CLOCK_MASK ;
 int CDCE706_CLKIN_SOURCE ;
 unsigned int CDCE706_CLKIN_SOURCE_LVCMOS ;
 unsigned int CDCE706_CLKIN_SOURCE_MASK ;
 scalar_t__ IS_ERR (struct clk*) ;
 TYPE_2__ __clk_get_name (struct clk*) ;
 int cdce706_clkin_name ;
 int cdce706_clkin_ops ;
 int cdce706_reg_read (struct cdce706_dev_data*,int ,unsigned int*) ;
 int cdce706_register_hw (struct cdce706_dev_data*,TYPE_2__*,unsigned int,int ,struct clk_init_data*) ;
 TYPE_2__* cdce706_source_name ;
 struct clk* devm_clk_get (int *,TYPE_2__) ;

__attribute__((used)) static int cdce706_register_clkin(struct cdce706_dev_data *cdce)
{
 struct clk_init_data init = {
  .ops = &cdce706_clkin_ops,
  .parent_names = cdce->clkin_name,
  .num_parents = ARRAY_SIZE(cdce->clkin_name),
 };
 unsigned i;
 int ret;
 unsigned clock, source;

 for (i = 0; i < ARRAY_SIZE(cdce->clkin_name); ++i) {
  struct clk *parent = devm_clk_get(&cdce->client->dev,
        cdce706_source_name[i]);

  if (IS_ERR(parent)) {
   cdce->clkin_name[i] = cdce706_source_name[i];
  } else {
   cdce->clkin_name[i] = __clk_get_name(parent);
   cdce->clkin_clk[i] = parent;
  }
 }

 ret = cdce706_reg_read(cdce, CDCE706_CLKIN_SOURCE, &source);
 if (ret < 0)
  return ret;
 if ((source & CDCE706_CLKIN_SOURCE_MASK) ==
     CDCE706_CLKIN_SOURCE_LVCMOS) {
  ret = cdce706_reg_read(cdce, CDCE706_CLKIN_CLOCK, &clock);
  if (ret < 0)
   return ret;
  cdce->clkin[0].parent = !!(clock & CDCE706_CLKIN_CLOCK_MASK);
 }

 ret = cdce706_register_hw(cdce, cdce->clkin,
      ARRAY_SIZE(cdce->clkin),
      cdce706_clkin_name, &init);
 return ret;
}
