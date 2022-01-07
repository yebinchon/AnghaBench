
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmcs12 {int dummy; } ;


 int SECONDARY_EXEC_VIRTUAL_INTR_DELIVERY ;
 int nested_cpu_has2 (struct vmcs12*,int ) ;

__attribute__((used)) static inline bool nested_cpu_has_vid(struct vmcs12 *vmcs12)
{
 return nested_cpu_has2(vmcs12, SECONDARY_EXEC_VIRTUAL_INTR_DELIVERY);
}
