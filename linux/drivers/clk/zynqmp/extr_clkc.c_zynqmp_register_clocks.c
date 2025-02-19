
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct device_node {int dummy; } ;
struct TYPE_4__ {int clk_name; } ;
struct TYPE_3__ {int * hws; } ;


 scalar_t__ CLK_TYPE_OUTPUT ;
 scalar_t__ IS_ERR (int ) ;
 int MAX_NAME_LEN ;
 int MAX_PARENT ;
 int PTR_ERR (int ) ;
 int WARN_ON (int) ;
 int WARN_ONCE (int,char*,int ) ;
 TYPE_2__* clock ;
 scalar_t__ clock_max_idx ;
 int pr_err (char*,int ,int ) ;
 TYPE_1__* zynqmp_data ;
 scalar_t__ zynqmp_get_clock_name (scalar_t__,char*) ;
 int zynqmp_get_clock_type (scalar_t__,scalar_t__*) ;
 scalar_t__ zynqmp_get_parent_list (struct device_node*,scalar_t__,char const**,scalar_t__*) ;
 int zynqmp_register_clk_topology (scalar_t__,char*,scalar_t__,char const**) ;

__attribute__((used)) static int zynqmp_register_clocks(struct device_node *np)
{
 int ret;
 u32 i, total_parents = 0, type = 0;
 const char *parent_names[MAX_PARENT];

 for (i = 0; i < clock_max_idx; i++) {
  char clk_name[MAX_NAME_LEN];


  if (zynqmp_get_clock_name(i, clk_name))
   continue;




  ret = zynqmp_get_clock_type(i, &type);
  if (ret || type != CLK_TYPE_OUTPUT)
   continue;


  if (zynqmp_get_parent_list(np, i, parent_names,
        &total_parents)) {
   WARN_ONCE(1, "No parents found for %s\n",
      clock[i].clk_name);
   continue;
  }

  zynqmp_data->hws[i] =
   zynqmp_register_clk_topology(i, clk_name,
           total_parents,
           parent_names);
 }

 for (i = 0; i < clock_max_idx; i++) {
  if (IS_ERR(zynqmp_data->hws[i])) {
   pr_err("Zynq Ultrascale+ MPSoC clk %s: register failed with %ld\n",
          clock[i].clk_name, PTR_ERR(zynqmp_data->hws[i]));
   WARN_ON(1);
  }
 }
 return 0;
}
