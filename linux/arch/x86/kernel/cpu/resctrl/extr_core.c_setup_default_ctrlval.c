
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rdt_resource {int num_closid; int default_ctrl; } ;


 int MBA_MAX_MBPS ;

void setup_default_ctrlval(struct rdt_resource *r, u32 *dc, u32 *dm)
{
 int i;







 for (i = 0; i < r->num_closid; i++, dc++, dm++) {
  *dc = r->default_ctrl;
  *dm = MBA_MAX_MBPS;
 }
}
