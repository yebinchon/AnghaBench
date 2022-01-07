
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct clk {int dummy; } ;


 int ENOENT ;
 struct clk* ERR_PTR (int ) ;
 struct clk bus_clk ;
 struct clk cpu_clk ;
 struct clk dsp_clk ;
 int strcmp (char const*,char*) ;
 struct clk vbus_clk ;

struct clk *clk_get(struct device *dev, const char *id)
{
 if (!strcmp(id, "bus"))
  return &bus_clk;

 if (!strcmp(id, "cpmac"))
  return &vbus_clk;
 if (!strcmp(id, "cpu"))
  return &cpu_clk;
 if (!strcmp(id, "dsp"))
  return &dsp_clk;
 if (!strcmp(id, "vbus"))
  return &vbus_clk;
 return ERR_PTR(-ENOENT);
}
