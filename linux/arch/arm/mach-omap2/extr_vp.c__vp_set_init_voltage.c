
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef char u32 ;
struct voltagedomain {char (* read ) (int ) ;int (* write ) (char,int ) ;TYPE_1__* pmic; struct omap_vp_instance* vp; } ;
struct omap_vp_instance {int vpconfig; TYPE_2__* common; } ;
struct TYPE_4__ {char vpconfig_initvoltage_mask; char vpconfig_forceupdate; char vpconfig_initvdd; } ;
struct TYPE_3__ {char (* uv_to_vsel ) (char) ;} ;


 char __ffs (char) ;
 char stub1 (char) ;
 char stub2 (int ) ;
 int stub3 (char,int ) ;
 int stub4 (char,int ) ;
 int stub5 (char,int ) ;

__attribute__((used)) static u32 _vp_set_init_voltage(struct voltagedomain *voltdm, u32 volt)
{
 struct omap_vp_instance *vp = voltdm->vp;
 u32 vpconfig;
 char vsel;

 vsel = voltdm->pmic->uv_to_vsel(volt);

 vpconfig = voltdm->read(vp->vpconfig);
 vpconfig &= ~(vp->common->vpconfig_initvoltage_mask |
        vp->common->vpconfig_forceupdate |
        vp->common->vpconfig_initvdd);
 vpconfig |= vsel << __ffs(vp->common->vpconfig_initvoltage_mask);
 voltdm->write(vpconfig, vp->vpconfig);


 voltdm->write((vpconfig | vp->common->vpconfig_initvdd),
         vp->vpconfig);


 voltdm->write(vpconfig, vp->vpconfig);

 return vpconfig;
}
