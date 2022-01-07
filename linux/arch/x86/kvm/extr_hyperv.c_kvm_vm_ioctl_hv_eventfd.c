
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_hyperv_eventfd {int flags; int conn_id; int fd; } ;
struct kvm {int dummy; } ;


 int EINVAL ;
 int KVM_HYPERV_CONN_ID_MASK ;
 int KVM_HYPERV_EVENTFD_DEASSIGN ;
 int kvm_hv_eventfd_assign (struct kvm*,int,int ) ;
 int kvm_hv_eventfd_deassign (struct kvm*,int) ;

int kvm_vm_ioctl_hv_eventfd(struct kvm *kvm, struct kvm_hyperv_eventfd *args)
{
 if ((args->flags & ~KVM_HYPERV_EVENTFD_DEASSIGN) ||
     (args->conn_id & ~KVM_HYPERV_CONN_ID_MASK))
  return -EINVAL;

 if (args->flags == KVM_HYPERV_EVENTFD_DEASSIGN)
  return kvm_hv_eventfd_deassign(kvm, args->conn_id);
 return kvm_hv_eventfd_assign(kvm, args->conn_id, args->fd);
}
