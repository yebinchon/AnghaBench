
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_sr {int voltdm; } ;


 int omap_vp_disable (int ) ;
 int sr_disable (struct omap_sr*) ;
 int sr_disable_errgen (struct omap_sr*) ;
 int voltdm_reset (int ) ;

__attribute__((used)) static int sr_class3_disable(struct omap_sr *sr, int is_volt_reset)
{
 sr_disable_errgen(sr);
 omap_vp_disable(sr->voltdm);
 sr_disable(sr);
 if (is_volt_reset)
  voltdm_reset(sr->voltdm);

 return 0;
}
