
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nmi_reason; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;


 TYPE_2__* HYPERVISOR_shared_info ;
 unsigned char NMI_REASON_IOCHK ;
 unsigned char NMI_REASON_SERR ;
 int _XEN_NMIREASON_io_error ;
 int _XEN_NMIREASON_pci_serr ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static unsigned char xen_get_nmi_reason(void)
{
 unsigned char reason = 0;


 if (test_bit(_XEN_NMIREASON_io_error,
       &HYPERVISOR_shared_info->arch.nmi_reason))
  reason |= NMI_REASON_IOCHK;
 if (test_bit(_XEN_NMIREASON_pci_serr,
       &HYPERVISOR_shared_info->arch.nmi_reason))
  reason |= NMI_REASON_SERR;

 return reason;
}
