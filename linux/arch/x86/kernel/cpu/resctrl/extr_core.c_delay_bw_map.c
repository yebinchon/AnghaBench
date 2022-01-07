
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ delay_linear; } ;
struct rdt_resource {scalar_t__ default_ctrl; TYPE_1__ membw; } ;


 scalar_t__ MAX_MBA_BW ;
 int pr_warn_once (char*) ;

u32 delay_bw_map(unsigned long bw, struct rdt_resource *r)
{
 if (r->membw.delay_linear)
  return MAX_MBA_BW - bw;

 pr_warn_once("Non Linear delay-bw map not supported but queried\n");
 return r->default_ctrl;
}
