
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int of_node; } ;


 int of_find_compatible_node (int *,int *,char*) ;
 int pr_err (char*) ;
 int reset_controller_register (TYPE_1__*) ;
 TYPE_1__ reset_dev ;

void ralink_rst_init(void)
{
 reset_dev.of_node = of_find_compatible_node(((void*)0), ((void*)0),
      "ralink,rt2880-reset");
 if (!reset_dev.of_node)
  pr_err("Failed to find reset controller node");
 else
  reset_controller_register(&reset_dev);
}
