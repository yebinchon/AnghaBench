
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_dfll {TYPE_1__* dev; int output_clock_name; int cg_scale; int cg; int ci; int cf; int force_mode; int sample_rate; int droop_ctrl; } ;
struct TYPE_2__ {int of_node; } ;


 int EINVAL ;
 int dev_err (TYPE_1__*,char*) ;
 int of_property_read_bool (int ,char*) ;
 scalar_t__ of_property_read_string (int ,char*,int *) ;
 int read_dt_param (struct tegra_dfll*,char*,int *) ;

__attribute__((used)) static int dfll_fetch_common_params(struct tegra_dfll *td)
{
 bool ok = 1;

 ok &= read_dt_param(td, "nvidia,droop-ctrl", &td->droop_ctrl);
 ok &= read_dt_param(td, "nvidia,sample-rate", &td->sample_rate);
 ok &= read_dt_param(td, "nvidia,force-mode", &td->force_mode);
 ok &= read_dt_param(td, "nvidia,cf", &td->cf);
 ok &= read_dt_param(td, "nvidia,ci", &td->ci);
 ok &= read_dt_param(td, "nvidia,cg", &td->cg);
 td->cg_scale = of_property_read_bool(td->dev->of_node,
          "nvidia,cg-scale");

 if (of_property_read_string(td->dev->of_node, "clock-output-names",
        &td->output_clock_name)) {
  dev_err(td->dev, "missing clock-output-names property\n");
  ok = 0;
 }

 return ok ? 0 : -EINVAL;
}
