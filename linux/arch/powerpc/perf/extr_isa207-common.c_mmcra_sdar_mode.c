
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int CPU_FTR_ARCH_300 ;
 unsigned long MMCRA_SAMPLE_ENABLE ;
 unsigned long MMCRA_SDAR_MODE_DCACHE ;
 unsigned long MMCRA_SDAR_MODE_NO_UPDATES ;
 unsigned long MMCRA_SDAR_MODE_SHIFT ;
 unsigned long MMCRA_SDAR_MODE_TLB ;
 scalar_t__ cpu_has_feature (int ) ;
 scalar_t__ is_event_marked (int ) ;
 unsigned long p9_SDAR_MODE (int ) ;

__attribute__((used)) static void mmcra_sdar_mode(u64 event, unsigned long *mmcra)
{
 if (cpu_has_feature(CPU_FTR_ARCH_300)) {
  if (is_event_marked(event) || (*mmcra & MMCRA_SAMPLE_ENABLE))
   *mmcra &= MMCRA_SDAR_MODE_NO_UPDATES;
  else if (p9_SDAR_MODE(event))
   *mmcra |= p9_SDAR_MODE(event) << MMCRA_SDAR_MODE_SHIFT;
  else
   *mmcra |= MMCRA_SDAR_MODE_DCACHE;
 } else
  *mmcra |= MMCRA_SDAR_MODE_TLB;
}
