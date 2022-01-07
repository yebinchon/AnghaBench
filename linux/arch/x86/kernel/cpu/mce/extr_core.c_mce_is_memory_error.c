
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mce {scalar_t__ cpuvendor; int status; } ;


 int BIT (int) ;
 scalar_t__ X86_VENDOR_AMD ;
 scalar_t__ X86_VENDOR_HYGON ;
 scalar_t__ X86_VENDOR_INTEL ;
 int amd_mce_is_memory_error (struct mce*) ;

bool mce_is_memory_error(struct mce *m)
{
 if (m->cpuvendor == X86_VENDOR_AMD ||
     m->cpuvendor == X86_VENDOR_HYGON) {
  return amd_mce_is_memory_error(m);
 } else if (m->cpuvendor == X86_VENDOR_INTEL) {
  return (m->status & 0xef80) == BIT(7) ||
         (m->status & 0xef00) == BIT(8) ||
         (m->status & 0xeffc) == 0xc;
 }

 return 0;
}
