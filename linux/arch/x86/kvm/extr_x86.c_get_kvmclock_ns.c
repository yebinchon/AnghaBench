
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct pvclock_vcpu_time_info {int tsc_to_system_mul; int tsc_shift; scalar_t__ system_time; int tsc_timestamp; } ;
struct kvm_arch {scalar_t__ kvmclock_offset; int pvclock_gtod_sync_lock; scalar_t__ master_kernel_ns; int master_cycle_now; int use_master_clock; } ;
struct kvm {struct kvm_arch arch; } ;


 int NSEC_PER_SEC ;
 scalar_t__ __pvclock_read_cycles (struct pvclock_vcpu_time_info*,int ) ;
 long long __this_cpu_read (int ) ;
 int cpu_tsc_khz ;
 int get_cpu () ;
 scalar_t__ ktime_get_boottime_ns () ;
 int kvm_get_time_scale (int ,long long,int *,int *) ;
 int put_cpu () ;
 int rdtsc () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

u64 get_kvmclock_ns(struct kvm *kvm)
{
 struct kvm_arch *ka = &kvm->arch;
 struct pvclock_vcpu_time_info hv_clock;
 u64 ret;

 spin_lock(&ka->pvclock_gtod_sync_lock);
 if (!ka->use_master_clock) {
  spin_unlock(&ka->pvclock_gtod_sync_lock);
  return ktime_get_boottime_ns() + ka->kvmclock_offset;
 }

 hv_clock.tsc_timestamp = ka->master_cycle_now;
 hv_clock.system_time = ka->master_kernel_ns + ka->kvmclock_offset;
 spin_unlock(&ka->pvclock_gtod_sync_lock);


 get_cpu();

 if (__this_cpu_read(cpu_tsc_khz)) {
  kvm_get_time_scale(NSEC_PER_SEC, __this_cpu_read(cpu_tsc_khz) * 1000LL,
       &hv_clock.tsc_shift,
       &hv_clock.tsc_to_system_mul);
  ret = __pvclock_read_cycles(&hv_clock, rdtsc());
 } else
  ret = ktime_get_boottime_ns() + ka->kvmclock_offset;

 put_cpu();

 return ret;
}
