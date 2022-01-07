
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_sr {int dummy; } ;


 int sr_configure_errgen (struct omap_sr*) ;

__attribute__((used)) static int sr_class3_configure(struct omap_sr *sr)
{
 return sr_configure_errgen(sr);
}
