
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int asce; } ;
struct mm_struct {TYPE_1__ context; } ;
typedef int pud_t ;
typedef int pmd_t ;


 int IDTE_GLOBAL ;
 int IDTE_GUEST_ASCE ;
 int IDTE_NODAT ;
 scalar_t__ MACHINE_HAS_IDTE ;
 scalar_t__ MACHINE_HAS_TLB_GUEST ;
 int __pmdp_csp (int *) ;
 int __pudp_idte (unsigned long,int *,int,int ,int ) ;

__attribute__((used)) static inline void pudp_idte_global(struct mm_struct *mm,
        unsigned long addr, pud_t *pudp)
{
 if (MACHINE_HAS_TLB_GUEST)
  __pudp_idte(addr, pudp, IDTE_NODAT | IDTE_GUEST_ASCE,
       mm->context.asce, IDTE_GLOBAL);
 else if (MACHINE_HAS_IDTE)
  __pudp_idte(addr, pudp, 0, 0, IDTE_GLOBAL);
 else




  __pmdp_csp((pmd_t *) pudp);
}
