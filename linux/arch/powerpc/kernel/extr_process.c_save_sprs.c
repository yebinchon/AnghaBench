
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_struct {void* tar; void* fscr; void* ebbrr; void* ebbhr; void* bescr; void* dscr; void* vrsave; } ;


 int CPU_FTR_ALTIVEC ;
 int CPU_FTR_ARCH_207S ;
 int CPU_FTR_DSCR ;
 int SPRN_BESCR ;
 int SPRN_DSCR ;
 int SPRN_EBBHR ;
 int SPRN_EBBRR ;
 int SPRN_FSCR ;
 int SPRN_TAR ;
 int SPRN_VRSAVE ;
 scalar_t__ cpu_has_feature (int ) ;
 void* mfspr (int ) ;
 int thread_pkey_regs_save (struct thread_struct*) ;

__attribute__((used)) static inline void save_sprs(struct thread_struct *t)
{
 thread_pkey_regs_save(t);
}
