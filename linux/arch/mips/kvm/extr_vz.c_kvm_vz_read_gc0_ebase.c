
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cpu_has_ebase_wg ;
 long read_gc0_ebase () ;
 long read_gc0_ebase_64 () ;

__attribute__((used)) static inline long kvm_vz_read_gc0_ebase(void)
{
 if (sizeof(long) == 8 && cpu_has_ebase_wg)
  return read_gc0_ebase_64();
 else
  return read_gc0_ebase();
}
