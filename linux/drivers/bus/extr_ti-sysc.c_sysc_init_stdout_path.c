
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysc {int dummy; } ;
struct device_node {int dummy; } ;


 int ENODEV ;
 struct device_node* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct device_node*) ;
 struct device_node* of_find_node_by_path (char const*) ;
 char* of_get_property (struct device_node*,char*,int *) ;
 struct device_node* stdout_path ;

__attribute__((used)) static void sysc_init_stdout_path(struct sysc *ddata)
{
 struct device_node *np = ((void*)0);
 const char *uart;

 if (IS_ERR(stdout_path))
  return;

 if (stdout_path)
  return;

 np = of_find_node_by_path("/chosen");
 if (!np)
  goto err;

 uart = of_get_property(np, "stdout-path", ((void*)0));
 if (!uart)
  goto err;

 np = of_find_node_by_path(uart);
 if (!np)
  goto err;

 stdout_path = np;

 return;

err:
 stdout_path = ERR_PTR(-ENODEV);
}
