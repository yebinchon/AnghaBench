
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mpic {int dummy; } ;


 int fsl_mpic_get_version (struct mpic*) ;
 struct mpic* mpic_primary ;

u32 fsl_mpic_primary_get_version(void)
{
 struct mpic *mpic = mpic_primary;

 if (mpic)
  return fsl_mpic_get_version(mpic);

 return 0;
}
