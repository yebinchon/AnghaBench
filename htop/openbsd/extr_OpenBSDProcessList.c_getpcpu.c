
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kinfo_proc {int p_pctcpu; } ;


 scalar_t__ fscale ;
 double fxtofl (int ) ;

double getpcpu(const struct kinfo_proc *kp) {
   if (fscale == 0)
      return (0.0);



   return (100.0 * ((double)(kp->p_pctcpu) / fscale));
}
