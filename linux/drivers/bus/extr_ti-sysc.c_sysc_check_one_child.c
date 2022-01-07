
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysc {int dev; } ;
struct device_node {int dummy; } ;


 int dev_warn (int ,char*) ;
 char* of_get_property (struct device_node*,char*,int *) ;
 int sysc_check_quirk_stdout (struct sysc*,struct device_node*) ;
 int sysc_parse_dts_quirks (struct sysc*,struct device_node*,int) ;

__attribute__((used)) static void sysc_check_one_child(struct sysc *ddata,
     struct device_node *np)
{
 const char *name;

 name = of_get_property(np, "ti,hwmods", ((void*)0));
 if (name)
  dev_warn(ddata->dev, "really a child ti,hwmods property?");

 sysc_check_quirk_stdout(ddata, np);
 sysc_parse_dts_quirks(ddata, np, 1);
}
