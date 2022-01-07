
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int PPMU_HAS_SIER ;
 TYPE_1__* ppmu ;

bool is_sier_available(void)
{
 if (ppmu->flags & PPMU_HAS_SIER)
  return 1;

 return 0;
}
