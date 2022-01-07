
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sysc {TYPE_1__* dev; } ;
struct device_node {int dummy; } ;
struct clk_lookup {char const* con_id; struct clk* clk; int dev_id; } ;
struct clk {int dummy; } ;
struct TYPE_3__ {struct device_node* of_node; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int clk_put (struct clk*) ;
 int clkdev_add (struct clk_lookup*) ;
 int dev_name (TYPE_1__*) ;
 struct clk* devm_get_clk_from_child (TYPE_1__*,struct device_node*,char const*) ;
 struct clk_lookup* kcalloc (int,int,int ) ;
 struct clk* of_clk_get_by_name (struct device_node*,char const*) ;
 struct device_node* of_get_next_available_child (struct device_node*,int *) ;

__attribute__((used)) static int sysc_add_named_clock_from_child(struct sysc *ddata,
        const char *name,
        const char *optfck_name)
{
 struct device_node *np = ddata->dev->of_node;
 struct device_node *child;
 struct clk_lookup *cl;
 struct clk *clock;
 const char *n;

 if (name)
  n = name;
 else
  n = optfck_name;


 clock = of_clk_get_by_name(np, n);
 if (!IS_ERR(clock)) {
  clk_put(clock);

  return 0;
 }

 child = of_get_next_available_child(np, ((void*)0));
 if (!child)
  return -ENODEV;

 clock = devm_get_clk_from_child(ddata->dev, child, name);
 if (IS_ERR(clock))
  return PTR_ERR(clock);






 cl = kcalloc(1, sizeof(*cl), GFP_KERNEL);
 if (!cl)
  return -ENOMEM;

 cl->con_id = n;
 cl->dev_id = dev_name(ddata->dev);
 cl->clk = clock;
 clkdev_add(cl);

 clk_put(clock);

 return 0;
}
