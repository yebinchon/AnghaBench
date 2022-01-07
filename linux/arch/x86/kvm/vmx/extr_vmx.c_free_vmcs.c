
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmcs {int dummy; } ;
struct TYPE_2__ {int order; } ;


 int free_pages (unsigned long,int ) ;
 TYPE_1__ vmcs_config ;

void free_vmcs(struct vmcs *vmcs)
{
 free_pages((unsigned long)vmcs, vmcs_config.order);
}
