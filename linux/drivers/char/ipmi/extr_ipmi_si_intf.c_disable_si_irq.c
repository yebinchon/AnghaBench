
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ irq; } ;
struct smi_info {int interrupt_disabled; TYPE_1__ io; } ;


 int start_check_enables (struct smi_info*) ;

__attribute__((used)) static inline bool disable_si_irq(struct smi_info *smi_info)
{
 if ((smi_info->io.irq) && (!smi_info->interrupt_disabled)) {
  smi_info->interrupt_disabled = 1;
  start_check_enables(smi_info);
  return 1;
 }
 return 0;
}
