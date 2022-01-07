
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long MIPS_EBASE_WG ;
 scalar_t__ cpu_has_ebase_wg ;
 scalar_t__ cpu_has_mips64r6 ;
 int write_gc0_ebase (long) ;
 int write_gc0_ebase_64 (long) ;

__attribute__((used)) static inline void kvm_vz_write_gc0_ebase(long v)
{





 if (sizeof(long) == 8 &&
     (cpu_has_mips64r6 || cpu_has_ebase_wg)) {
  write_gc0_ebase_64(v | MIPS_EBASE_WG);
  write_gc0_ebase_64(v);
 } else {
  write_gc0_ebase(v | MIPS_EBASE_WG);
  write_gc0_ebase(v);
 }
}
