
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eeh_pe {int config_addr; int addr; TYPE_1__* phb; } ;
struct TYPE_2__ {int buid; } ;


 int BUID_HI (int ) ;
 int BUID_LO (int ) ;
 int ERR_TYPE_RTAS_LOG ;
 int eeh_error_buf_size ;
 int ibm_slot_error_detail ;
 int log_error (char*,int ,int ) ;
 int memset (char*,int ,int ) ;
 int rtas_call (int ,int,int,int *,int,int ,int ,int ,unsigned long,int ,int ,int) ;
 char* slot_errbuf ;
 int slot_errbuf_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int virt_to_phys (char*) ;

__attribute__((used)) static int pseries_eeh_get_log(struct eeh_pe *pe, int severity, char *drv_log, unsigned long len)
{
 int config_addr;
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&slot_errbuf_lock, flags);
 memset(slot_errbuf, 0, eeh_error_buf_size);


 config_addr = pe->config_addr;
 if (pe->addr)
  config_addr = pe->addr;

 ret = rtas_call(ibm_slot_error_detail, 8, 1, ((void*)0), config_addr,
   BUID_HI(pe->phb->buid), BUID_LO(pe->phb->buid),
   virt_to_phys(drv_log), len,
   virt_to_phys(slot_errbuf), eeh_error_buf_size,
   severity);
 if (!ret)
  log_error(slot_errbuf, ERR_TYPE_RTAS_LOG, 0);
 spin_unlock_irqrestore(&slot_errbuf_lock, flags);

 return ret;
}
