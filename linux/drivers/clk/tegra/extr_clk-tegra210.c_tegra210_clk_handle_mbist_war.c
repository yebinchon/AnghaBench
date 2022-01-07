
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra210_domain_mbist_war {int clks; scalar_t__ num_clks; int (* handle_lvl2_ovr ) (struct tegra210_domain_mbist_war*) ;} ;


 unsigned int ARRAY_SIZE (struct tegra210_domain_mbist_war*) ;
 int EINVAL ;
 int ENODEV ;
 int WARN (int,char*) ;
 int clk_bulk_disable_unprepare (scalar_t__,int ) ;
 int clk_bulk_prepare_enable (scalar_t__,int ) ;
 int lvl2_ovr_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct tegra210_domain_mbist_war*) ;
 struct tegra210_domain_mbist_war* tegra210_pg_mbist_war ;

int tegra210_clk_handle_mbist_war(unsigned int id)
{
 int err;
 struct tegra210_domain_mbist_war *mbist_war;

 if (id >= ARRAY_SIZE(tegra210_pg_mbist_war)) {
  WARN(1, "unknown domain id in MBIST WAR handler\n");
  return -EINVAL;
 }

 mbist_war = &tegra210_pg_mbist_war[id];
 if (!mbist_war->handle_lvl2_ovr)
  return 0;

 if (mbist_war->num_clks && !mbist_war->clks)
  return -ENODEV;

 err = clk_bulk_prepare_enable(mbist_war->num_clks, mbist_war->clks);
 if (err < 0)
  return err;

 mutex_lock(&lvl2_ovr_lock);

 mbist_war->handle_lvl2_ovr(mbist_war);

 mutex_unlock(&lvl2_ovr_lock);

 clk_bulk_disable_unprepare(mbist_war->num_clks, mbist_war->clks);

 return 0;
}
