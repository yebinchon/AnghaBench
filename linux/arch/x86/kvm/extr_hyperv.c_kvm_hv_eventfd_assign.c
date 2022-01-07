
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct kvm_hv {int hv_lock; int conn_to_evt; } ;
struct TYPE_2__ {struct kvm_hv hyperv; } ;
struct kvm {TYPE_1__ arch; } ;
struct eventfd_ctx {int dummy; } ;


 int EEXIST ;
 int ENOSPC ;
 int GFP_KERNEL_ACCOUNT ;
 scalar_t__ IS_ERR (struct eventfd_ctx*) ;
 int PTR_ERR (struct eventfd_ctx*) ;
 struct eventfd_ctx* eventfd_ctx_fdget (int) ;
 int eventfd_ctx_put (struct eventfd_ctx*) ;
 int idr_alloc (int *,struct eventfd_ctx*,scalar_t__,scalar_t__,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int kvm_hv_eventfd_assign(struct kvm *kvm, u32 conn_id, int fd)
{
 struct kvm_hv *hv = &kvm->arch.hyperv;
 struct eventfd_ctx *eventfd;
 int ret;

 eventfd = eventfd_ctx_fdget(fd);
 if (IS_ERR(eventfd))
  return PTR_ERR(eventfd);

 mutex_lock(&hv->hv_lock);
 ret = idr_alloc(&hv->conn_to_evt, eventfd, conn_id, conn_id + 1,
   GFP_KERNEL_ACCOUNT);
 mutex_unlock(&hv->hv_lock);

 if (ret >= 0)
  return 0;

 if (ret == -ENOSPC)
  ret = -EEXIST;
 eventfd_ctx_put(eventfd);
 return ret;
}
