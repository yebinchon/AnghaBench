
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct clk {int name; } ;


 int ENOENT ;
 struct clk* ERR_PTR (int ) ;
 char const* dev_name (struct device*) ;
 struct clk** mcf_clks ;
 int pr_warn (char*,char const*) ;
 int strcmp (int ,char const*) ;

struct clk *clk_get(struct device *dev, const char *id)
{
 const char *clk_name = dev ? dev_name(dev) : id ? id : ((void*)0);
 struct clk *clk;
 unsigned i;

 for (i = 0; (clk = mcf_clks[i]) != ((void*)0); ++i)
  if (!strcmp(clk->name, clk_name))
   return clk;
 pr_warn("clk_get: didn't find clock %s\n", clk_name);
 return ERR_PTR(-ENOENT);
}
