
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_hwmod_rst_info {int dummy; } ;
struct omap_hwmod {int dummy; } ;
struct TYPE_2__ {int (* assert_hardreset ) (struct omap_hwmod*,struct omap_hwmod_rst_info*) ;} ;


 int EINVAL ;
 int ENOSYS ;
 int _lookup_hardreset (struct omap_hwmod*,char const*,struct omap_hwmod_rst_info*) ;
 TYPE_1__ soc_ops ;
 int stub1 (struct omap_hwmod*,struct omap_hwmod_rst_info*) ;

__attribute__((used)) static int _assert_hardreset(struct omap_hwmod *oh, const char *name)
{
 struct omap_hwmod_rst_info ohri;
 int ret = -EINVAL;

 if (!oh)
  return -EINVAL;

 if (!soc_ops.assert_hardreset)
  return -ENOSYS;

 ret = _lookup_hardreset(oh, name, &ohri);
 if (ret < 0)
  return ret;

 ret = soc_ops.assert_hardreset(oh, &ohri);

 return ret;
}
