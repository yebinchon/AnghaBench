
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct clk {int dummy; } ;


 int ENOENT ;
 struct clk* ERR_PTR (int ) ;
 char* dev_name (struct device*) ;
 int strcmp (char const*,char*) ;
 struct clk sys_clk ;
 struct clk uart_clk ;

struct clk *clk_get(struct device *dev, const char *id)
{
 const char *lookup = id;

 if (dev)
  lookup = dev_name(dev);

 if (!strcmp(lookup, "apb:uart0"))
  return &uart_clk;
 if (!strcmp(lookup, "sys"))
  return &sys_clk;

 return ERR_PTR(-ENOENT);
}
