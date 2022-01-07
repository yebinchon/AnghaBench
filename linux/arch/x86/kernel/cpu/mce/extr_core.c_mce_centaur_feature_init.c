
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mca_config {scalar_t__ monarch_timeout; } ;
struct cpuinfo_x86 {int x86; int x86_model; int x86_stepping; } ;


 scalar_t__ USEC_PER_SEC ;
 struct mca_config mca_cfg ;

__attribute__((used)) static void mce_centaur_feature_init(struct cpuinfo_x86 *c)
{
 struct mca_config *cfg = &mca_cfg;





 if ((c->x86 == 6 && c->x86_model == 0xf && c->x86_stepping >= 0xe) ||
      c->x86 > 6) {
  if (cfg->monarch_timeout < 0)
   cfg->monarch_timeout = USEC_PER_SEC;
 }
}
