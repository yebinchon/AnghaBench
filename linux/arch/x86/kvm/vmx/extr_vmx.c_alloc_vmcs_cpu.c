
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int shadow_vmcs; int revision_id; } ;
struct vmcs {TYPE_1__ hdr; } ;
struct page {int dummy; } ;
typedef int gfp_t ;
struct TYPE_4__ {int revision_id; int size; int order; } ;


 int KVM_EVMCS_VERSION ;
 struct page* __alloc_pages_node (int,int ,int ) ;
 int cpu_to_node (int) ;
 int enable_evmcs ;
 int memset (struct vmcs*,int ,int ) ;
 struct vmcs* page_address (struct page*) ;
 scalar_t__ static_branch_unlikely (int *) ;
 TYPE_2__ vmcs_config ;

struct vmcs *alloc_vmcs_cpu(bool shadow, int cpu, gfp_t flags)
{
 int node = cpu_to_node(cpu);
 struct page *pages;
 struct vmcs *vmcs;

 pages = __alloc_pages_node(node, flags, vmcs_config.order);
 if (!pages)
  return ((void*)0);
 vmcs = page_address(pages);
 memset(vmcs, 0, vmcs_config.size);


 if (static_branch_unlikely(&enable_evmcs))
  vmcs->hdr.revision_id = KVM_EVMCS_VERSION;
 else
  vmcs->hdr.revision_id = vmcs_config.revision_id;

 if (shadow)
  vmcs->hdr.shadow_vmcs = 1;
 return vmcs;
}
