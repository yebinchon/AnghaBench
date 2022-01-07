
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u64 ;
struct TYPE_3__ {int tlbsize; } ;
struct TYPE_4__ {unsigned int tlbsize; unsigned int tlbsizevtlb; TYPE_1__ guest; } ;



 unsigned int CVMVMCONF_MMUSIZEM1 ;
 unsigned int CVMVMCONF_MMUSIZEM1_S ;
 unsigned int CVMVMCONF_RMMUSIZEM1 ;
 scalar_t__ cpu_has_guestid ;
 TYPE_2__ current_cpu_data ;
 int current_cpu_type () ;
 int kvm_vz_local_flush_guesttlb_all () ;
 int kvm_vz_local_flush_roottlb_all_guests () ;
 int local_flush_tlb_all () ;
 unsigned int read_c0_cvmvmconfig () ;
 int write_c0_cvmvmconfig (unsigned int) ;
 int write_c0_guestctl1 (int ) ;

__attribute__((used)) static void kvm_vz_hardware_disable(void)
{
 u64 cvmvmconfig;
 unsigned int mmu_size;


 kvm_vz_local_flush_guesttlb_all();

 switch (current_cpu_type()) {
 case 128:





  cvmvmconfig = read_c0_cvmvmconfig();
  mmu_size = ((cvmvmconfig & CVMVMCONF_MMUSIZEM1)
       >> CVMVMCONF_MMUSIZEM1_S) + 1;
  cvmvmconfig &= ~CVMVMCONF_RMMUSIZEM1;
  cvmvmconfig |= mmu_size - 1;
  write_c0_cvmvmconfig(cvmvmconfig);


  current_cpu_data.tlbsize = mmu_size;
  current_cpu_data.tlbsizevtlb = mmu_size;
  current_cpu_data.guest.tlbsize = 0;


  local_flush_tlb_all();
  break;
 }

 if (cpu_has_guestid) {
  write_c0_guestctl1(0);
  kvm_vz_local_flush_roottlb_all_guests();
 }
}
