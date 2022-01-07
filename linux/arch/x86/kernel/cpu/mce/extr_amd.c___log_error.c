
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef void* u64 ;
struct mce {int status; unsigned int bank; int addr; int synd; int ipid; int tsc; void* misc; } ;
struct TYPE_2__ {scalar_t__ smca; } ;


 int GENMASK_ULL (int,int) ;
 int MCI_STATUS_ADDRV ;
 int MCI_STATUS_SYNDV ;
 int MSR_AMD64_SMCA_MCx_IPID (unsigned int) ;
 int MSR_AMD64_SMCA_MCx_SYND (unsigned int) ;
 TYPE_1__ mce_flags ;
 int mce_log (struct mce*) ;
 int mce_setup (struct mce*) ;
 int rdmsrl (int ,int ) ;
 int rdtsc () ;

__attribute__((used)) static void __log_error(unsigned int bank, u64 status, u64 addr, u64 misc)
{
 struct mce m;

 mce_setup(&m);

 m.status = status;
 m.misc = misc;
 m.bank = bank;
 m.tsc = rdtsc();

 if (m.status & MCI_STATUS_ADDRV) {
  m.addr = addr;





  if (mce_flags.smca) {
   u8 lsb = (m.addr >> 56) & 0x3f;

   m.addr &= GENMASK_ULL(55, lsb);
  }
 }

 if (mce_flags.smca) {
  rdmsrl(MSR_AMD64_SMCA_MCx_IPID(bank), m.ipid);

  if (m.status & MCI_STATUS_SYNDV)
   rdmsrl(MSR_AMD64_SMCA_MCx_SYND(bank), m.synd);
 }

 mce_log(&m);
}
