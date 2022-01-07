
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int gsi_base; unsigned int num_rte; } ;


 int NR_IOSAPICS ;
 TYPE_1__* iosapic_lists ;

__attribute__((used)) static inline int
find_iosapic (unsigned int gsi)
{
 int i;

 for (i = 0; i < NR_IOSAPICS; i++) {
  if ((unsigned) (gsi - iosapic_lists[i].gsi_base) <
      iosapic_lists[i].num_rte)
   return i;
 }

 return -1;
}
