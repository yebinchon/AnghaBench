
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct thread_struct {scalar_t__ vrsave; scalar_t__ dscr; scalar_t__ bescr; scalar_t__ ebbhr; scalar_t__ ebbrr; scalar_t__ fscr; scalar_t__ tar; scalar_t__ tidr; scalar_t__ dscr_inherit; } ;
struct TYPE_2__ {scalar_t__ dscr_default; } ;


 int CPU_FTR_ALTIVEC ;
 int CPU_FTR_ARCH_207S ;
 int CPU_FTR_DSCR ;
 int CPU_FTR_P9_TIDR ;
 int SPRN_BESCR ;
 int SPRN_DSCR ;
 int SPRN_EBBHR ;
 int SPRN_EBBRR ;
 int SPRN_FSCR ;
 int SPRN_TAR ;
 int SPRN_TIDR ;
 int SPRN_VRSAVE ;
 scalar_t__ cpu_has_feature (int ) ;
 TYPE_1__* get_paca () ;
 int mtspr (int ,scalar_t__) ;
 int thread_pkey_regs_restore (struct thread_struct*,struct thread_struct*) ;

__attribute__((used)) static inline void restore_sprs(struct thread_struct *old_thread,
    struct thread_struct *new_thread)
{
 thread_pkey_regs_restore(new_thread, old_thread);
}
