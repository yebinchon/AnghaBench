
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct kvm_hv {int hv_lock; int conn_to_evt; } ;
struct TYPE_2__ {struct kvm_hv hyperv; } ;
struct kvm {int srcu; TYPE_1__ arch; } ;
struct eventfd_ctx {int dummy; } ;


 int ENOENT ;
 int eventfd_ctx_put (struct eventfd_ctx*) ;
 struct eventfd_ctx* idr_remove (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int synchronize_srcu (int *) ;

__attribute__((used)) static int kvm_hv_eventfd_deassign(struct kvm *kvm, u32 conn_id)
{
 struct kvm_hv *hv = &kvm->arch.hyperv;
 struct eventfd_ctx *eventfd;

 mutex_lock(&hv->hv_lock);
 eventfd = idr_remove(&hv->conn_to_evt, conn_id);
 mutex_unlock(&hv->hv_lock);

 if (!eventfd)
  return -ENOENT;

 synchronize_srcu(&kvm->srcu);
 eventfd_ctx_put(eventfd);
 return 0;
}
