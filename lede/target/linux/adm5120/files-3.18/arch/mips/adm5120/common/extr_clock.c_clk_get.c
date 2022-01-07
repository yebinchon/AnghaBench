
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
 struct clk uart_clk ;

struct clk *clk_get(struct device *dev, const char *id)
{
 const char *name = dev_name(dev);

 if (!strcmp(name, "apb:uart0") || !strcmp(name, "apb:uart1"))
  return &uart_clk;

 return ERR_PTR(-ENOENT);
}
