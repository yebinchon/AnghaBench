
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long smt_mode; int emul_smt_mode; int online_vcores; } ;
struct kvm {int lock; TYPE_1__ arch; } ;


 int CPU_FTR_ARCH_300 ;
 int EBUSY ;
 int EINVAL ;
 unsigned long MAX_SMT_THREADS ;
 int cpu_has_feature (int ) ;
 int is_power_of_2 (unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned long threads_per_subcore ;

__attribute__((used)) static int kvmhv_set_smt_mode(struct kvm *kvm, unsigned long smt_mode,
         unsigned long flags)
{
 int err;
 int esmt = 0;

 if (flags)
  return -EINVAL;
 if (smt_mode > MAX_SMT_THREADS || !is_power_of_2(smt_mode))
  return -EINVAL;
 if (!cpu_has_feature(CPU_FTR_ARCH_300)) {




  if (smt_mode > threads_per_subcore)
   return -EINVAL;
 } else {




  esmt = smt_mode;
  smt_mode = 1;
 }
 mutex_lock(&kvm->lock);
 err = -EBUSY;
 if (!kvm->arch.online_vcores) {
  kvm->arch.smt_mode = smt_mode;
  kvm->arch.emul_smt_mode = esmt;
  err = 0;
 }
 mutex_unlock(&kvm->lock);

 return err;
}
