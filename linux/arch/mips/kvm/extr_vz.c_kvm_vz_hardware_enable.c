
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long long u64 ;
struct TYPE_3__ {unsigned int tlbsize; } ;
struct TYPE_4__ {unsigned int tlbsize; unsigned int tlbsizevtlb; int guestid_mask; int guestid_cache; TYPE_1__ guest; } ;



 unsigned long long CVMCTL_IPPCI ;
 unsigned long long CVMCTL_IPPCI_SHIFT ;
 unsigned long long CVMCTL_IPTI ;
 unsigned long long CVMCTL_IPTI_SHIFT ;
 unsigned long long CVMVMCONF_DGHT ;
 unsigned long long CVMVMCONF_MMUSIZEM1 ;
 unsigned long long CVMVMCONF_MMUSIZEM1_S ;
 unsigned long long CVMVMCONF_RMMUSIZEM1 ;
 int EINVAL ;
 int GUESTID_FIRST_VERSION ;
 int GUESTID_MASK ;
 int GUESTID_VERSION_MASK ;
 int MIPS_GCTL0EXT_CGI ;
 int MIPS_GCTL0_AT_GUEST ;
 int MIPS_GCTL0_AT_SHIFT ;
 int MIPS_GCTL0_CF ;
 int MIPS_GCTL0_CG ;
 int MIPS_GCTL0_CP0 ;
 int WARN (int,char*) ;
 int clear_c0_guestctl2 (int) ;
 int cmpxchg (unsigned int*,int ,unsigned int) ;
 scalar_t__ cpu_has_guestctl0ext ;
 scalar_t__ cpu_has_guestctl2 ;
 scalar_t__ cpu_has_guestid ;
 TYPE_2__ current_cpu_data ;
 int current_cpu_type () ;
 unsigned int kvm_vz_guest_vtlb_size ;
 int kvm_vz_local_flush_guesttlb_all () ;
 int kvm_vz_local_flush_roottlb_all_guests () ;
 unsigned int kvm_vz_resize_guest_vtlb (unsigned int) ;
 int num_wired_entries () ;
 unsigned long long read_c0_cvmvmconfig () ;
 unsigned long long read_gc0_cvmctl () ;
 int set_c0_guestctl0ext (int ) ;
 int write_c0_cvmvmconfig (unsigned long long) ;
 int write_c0_guestctl0 (int) ;
 int write_c0_guestctl1 (int ) ;
 int write_gc0_cvmctl (unsigned long long) ;

__attribute__((used)) static int kvm_vz_hardware_enable(void)
{
 unsigned int mmu_size, guest_mmu_size, ftlb_size;
 u64 guest_cvmctl, cvmvmconfig;

 switch (current_cpu_type()) {
 case 128:

  guest_cvmctl = read_gc0_cvmctl();
  guest_cvmctl &= ~CVMCTL_IPTI;
  guest_cvmctl |= 7ull << CVMCTL_IPTI_SHIFT;
  guest_cvmctl &= ~CVMCTL_IPPCI;
  guest_cvmctl |= 6ull << CVMCTL_IPPCI_SHIFT;
  write_gc0_cvmctl(guest_cvmctl);

  cvmvmconfig = read_c0_cvmvmconfig();

  cvmvmconfig |= CVMVMCONF_DGHT;

  mmu_size = ((cvmvmconfig & CVMVMCONF_MMUSIZEM1)
       >> CVMVMCONF_MMUSIZEM1_S) + 1;
  guest_mmu_size = mmu_size / 2;
  mmu_size -= guest_mmu_size;
  cvmvmconfig &= ~CVMVMCONF_RMMUSIZEM1;
  cvmvmconfig |= mmu_size - 1;
  write_c0_cvmvmconfig(cvmvmconfig);


  current_cpu_data.tlbsize = mmu_size;
  current_cpu_data.tlbsizevtlb = mmu_size;
  current_cpu_data.guest.tlbsize = guest_mmu_size;


  kvm_vz_local_flush_guesttlb_all();
  break;
 default:





  mmu_size = current_cpu_data.tlbsizevtlb;
  ftlb_size = current_cpu_data.tlbsize - mmu_size;


  guest_mmu_size = kvm_vz_resize_guest_vtlb(mmu_size);
  current_cpu_data.guest.tlbsize = guest_mmu_size + ftlb_size;
  kvm_vz_local_flush_guesttlb_all();






  guest_mmu_size = mmu_size - num_wired_entries() - 2;
  guest_mmu_size = kvm_vz_resize_guest_vtlb(guest_mmu_size);
  current_cpu_data.guest.tlbsize = guest_mmu_size + ftlb_size;







  if (cmpxchg(&kvm_vz_guest_vtlb_size, 0, guest_mmu_size) &&
      WARN(guest_mmu_size != kvm_vz_guest_vtlb_size,
    "Available guest VTLB size mismatch"))
   return -EINVAL;
  break;
 }
 write_c0_guestctl0(MIPS_GCTL0_CP0 |
      (MIPS_GCTL0_AT_GUEST << MIPS_GCTL0_AT_SHIFT) |
      MIPS_GCTL0_CG | MIPS_GCTL0_CF);
 if (cpu_has_guestctl0ext)
  set_c0_guestctl0ext(MIPS_GCTL0EXT_CGI);

 if (cpu_has_guestid) {
  write_c0_guestctl1(0);
  kvm_vz_local_flush_roottlb_all_guests();

  GUESTID_MASK = current_cpu_data.guestid_mask;
  GUESTID_FIRST_VERSION = GUESTID_MASK + 1;
  GUESTID_VERSION_MASK = ~GUESTID_MASK;

  current_cpu_data.guestid_cache = GUESTID_FIRST_VERSION;
 }


 if (cpu_has_guestctl2)
  clear_c0_guestctl2(0x3f << 10);

 return 0;
}
