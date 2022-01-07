
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ call_parm; void* call_addr; void* call_addr_c; int magic; } ;
typedef TYPE_1__ nmi_t ;


 scalar_t__ NMI_ADDR (int ,int) ;
 int NMI_MAGIC ;
 int get_nasid () ;
 scalar_t__ nmi_dump ;

void install_cpu_nmi_handler(int slice)
{
 nmi_t *nmi_addr;

 nmi_addr = (nmi_t *)NMI_ADDR(get_nasid(), slice);
 if (nmi_addr->call_addr)
  return;
 nmi_addr->magic = NMI_MAGIC;
 nmi_addr->call_addr = (void *)nmi_dump;
 nmi_addr->call_addr_c =
  (void *)(~((unsigned long)(nmi_addr->call_addr)));
 nmi_addr->call_parm = 0;
}
