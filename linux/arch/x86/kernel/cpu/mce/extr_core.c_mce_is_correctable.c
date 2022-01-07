
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mce {scalar_t__ cpuvendor; int status; } ;


 int MCI_STATUS_DEFERRED ;
 int MCI_STATUS_UC ;
 scalar_t__ X86_VENDOR_AMD ;
 scalar_t__ X86_VENDOR_HYGON ;

bool mce_is_correctable(struct mce *m)
{
 if (m->cpuvendor == X86_VENDOR_AMD && m->status & MCI_STATUS_DEFERRED)
  return 0;

 if (m->cpuvendor == X86_VENDOR_HYGON && m->status & MCI_STATUS_DEFERRED)
  return 0;

 if (m->status & MCI_STATUS_UC)
  return 0;

 return 1;
}
