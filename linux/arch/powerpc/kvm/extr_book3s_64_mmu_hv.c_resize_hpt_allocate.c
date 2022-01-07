
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int virt; } ;
struct kvm_resize_hpt {TYPE_1__ hpt; int order; } ;


 int kvmppc_allocate_hpt (TYPE_1__*,int ) ;
 int resize_hpt_debug (struct kvm_resize_hpt*,char*,int ) ;

__attribute__((used)) static int resize_hpt_allocate(struct kvm_resize_hpt *resize)
{
 int rc;

 rc = kvmppc_allocate_hpt(&resize->hpt, resize->order);
 if (rc < 0)
  return rc;

 resize_hpt_debug(resize, "resize_hpt_allocate(): HPT @ 0x%lx\n",
    resize->hpt.virt);

 return 0;
}
