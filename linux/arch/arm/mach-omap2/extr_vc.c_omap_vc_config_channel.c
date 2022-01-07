
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct voltagedomain {int (* rmw ) (int,int,int ) ;struct omap_vc_channel* vc; } ;
struct omap_vc_channel {int flags; int cfg_channel; int cfg_channel_sa_shift; int cfg_channel_reg; } ;
struct TYPE_2__ {int racen; } ;


 int CFG_CHANNEL_MASK ;
 int OMAP_VC_CHANNEL_DEFAULT ;
 int stub1 (int,int,int ) ;
 TYPE_1__* vc_cfg_bits ;

__attribute__((used)) static int omap_vc_config_channel(struct voltagedomain *voltdm)
{
 struct omap_vc_channel *vc = voltdm->vc;





 if (vc->flags & OMAP_VC_CHANNEL_DEFAULT)
  vc->cfg_channel &= vc_cfg_bits->racen;

 voltdm->rmw(CFG_CHANNEL_MASK << vc->cfg_channel_sa_shift,
      vc->cfg_channel << vc->cfg_channel_sa_shift,
      vc->cfg_channel_reg);

 return 0;
}
