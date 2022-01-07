
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mce {int bank; int status; int addr; int tsc; } ;
struct cper_sec_mem_err {int validation_bits; int physical_addr; } ;


 int CPER_MEM_VALID_PA ;
 int GHES_SEV_PANIC ;
 int GHES_SEV_RECOVERABLE ;
 int MCI_STATUS_ADDRV ;
 int MCI_STATUS_EN ;
 int MCI_STATUS_PCC ;
 int MCI_STATUS_UC ;
 int MCI_STATUS_VAL ;
 int mce_log (struct mce*) ;
 int mce_setup (struct mce*) ;
 int rdtsc () ;

void apei_mce_report_mem_error(int severity, struct cper_sec_mem_err *mem_err)
{
 struct mce m;

 if (!(mem_err->validation_bits & CPER_MEM_VALID_PA))
  return;

 mce_setup(&m);
 m.bank = -1;

 m.status = MCI_STATUS_VAL | MCI_STATUS_EN | MCI_STATUS_ADDRV | 0x9f;

 if (severity >= GHES_SEV_RECOVERABLE)
  m.status |= MCI_STATUS_UC;

 if (severity >= GHES_SEV_PANIC) {
  m.status |= MCI_STATUS_PCC;
  m.tsc = rdtsc();
 }

 m.addr = mem_err->physical_addr;
 mce_log(&m);
}
