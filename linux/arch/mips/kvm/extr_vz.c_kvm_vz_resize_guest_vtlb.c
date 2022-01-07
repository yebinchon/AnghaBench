
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MIPSR6_WIRED_LIMIT ;
 unsigned int MIPSR6_WIRED_LIMIT_SHIFT ;
 unsigned int MIPS_CONF1_TLBS ;
 unsigned int MIPS_CONF1_TLBS_SHIFT ;
 unsigned int MIPS_CONF1_TLBS_SIZE ;
 unsigned int MIPS_CONF4_MMUEXTDEF ;
 unsigned int MIPS_CONF4_MMUEXTDEF_MMUSIZEEXT ;
 unsigned int MIPS_CONF4_MMUEXTDEF_VTLBSIZEEXT ;
 unsigned int MIPS_CONF4_MMUSIZEEXT ;
 unsigned int MIPS_CONF4_MMUSIZEEXT_SHIFT ;
 unsigned int MIPS_CONF4_VTLBSIZEEXT ;
 unsigned int MIPS_CONF4_VTLBSIZEEXT_SHIFT ;
 int back_to_back_c0_hazard () ;
 int change_gc0_config1 (unsigned int,unsigned int) ;
 scalar_t__ cpu_guest_has_conf1 ;
 scalar_t__ cpu_guest_has_conf4 ;
 scalar_t__ cpu_has_mips_r6 ;
 unsigned int read_c0_wired () ;
 unsigned int read_gc0_config1 () ;
 unsigned int read_gc0_config4 () ;
 int write_gc0_config4 (unsigned int) ;
 int write_gc0_wired (unsigned int) ;

__attribute__((used)) static unsigned int kvm_vz_resize_guest_vtlb(unsigned int size)
{
 unsigned int config4 = 0, ret = 0, limit;


 if (cpu_guest_has_conf1)
  change_gc0_config1(MIPS_CONF1_TLBS,
       (size - 1) << MIPS_CONF1_TLBS_SHIFT);
 if (cpu_guest_has_conf4) {
  config4 = read_gc0_config4();
  if (cpu_has_mips_r6 || (config4 & MIPS_CONF4_MMUEXTDEF) ==
      MIPS_CONF4_MMUEXTDEF_VTLBSIZEEXT) {
   config4 &= ~MIPS_CONF4_VTLBSIZEEXT;
   config4 |= ((size - 1) >> MIPS_CONF1_TLBS_SIZE) <<
    MIPS_CONF4_VTLBSIZEEXT_SHIFT;
  } else if ((config4 & MIPS_CONF4_MMUEXTDEF) ==
      MIPS_CONF4_MMUEXTDEF_MMUSIZEEXT) {
   config4 &= ~MIPS_CONF4_MMUSIZEEXT;
   config4 |= ((size - 1) >> MIPS_CONF1_TLBS_SIZE) <<
    MIPS_CONF4_MMUSIZEEXT_SHIFT;
  }
  write_gc0_config4(config4);
 }






 if (cpu_has_mips_r6) {
  limit = (read_c0_wired() & MIPSR6_WIRED_LIMIT) >>
      MIPSR6_WIRED_LIMIT_SHIFT;
  if (size - 1 <= limit)
   limit = 0;
  write_gc0_wired(limit << MIPSR6_WIRED_LIMIT_SHIFT);
 }


 back_to_back_c0_hazard();
 if (cpu_guest_has_conf1)
  ret = (read_gc0_config1() & MIPS_CONF1_TLBS) >>
      MIPS_CONF1_TLBS_SHIFT;
 if (config4) {
  if (cpu_has_mips_r6 || (config4 & MIPS_CONF4_MMUEXTDEF) ==
      MIPS_CONF4_MMUEXTDEF_VTLBSIZEEXT)
   ret |= ((config4 & MIPS_CONF4_VTLBSIZEEXT) >>
    MIPS_CONF4_VTLBSIZEEXT_SHIFT) <<
    MIPS_CONF1_TLBS_SIZE;
  else if ((config4 & MIPS_CONF4_MMUEXTDEF) ==
    MIPS_CONF4_MMUEXTDEF_MMUSIZEEXT)
   ret |= ((config4 & MIPS_CONF4_MMUSIZEEXT) >>
    MIPS_CONF4_MMUSIZEEXT_SHIFT) <<
    MIPS_CONF1_TLBS_SIZE;
 }
 return ret + 1;
}
