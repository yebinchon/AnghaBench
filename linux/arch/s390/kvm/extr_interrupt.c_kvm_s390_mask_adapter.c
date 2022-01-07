
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s390_io_adapter {int masked; int maskable; } ;
struct kvm {int dummy; } ;


 int EINVAL ;
 struct s390_io_adapter* get_io_adapter (struct kvm*,unsigned int) ;

int kvm_s390_mask_adapter(struct kvm *kvm, unsigned int id, bool masked)
{
 int ret;
 struct s390_io_adapter *adapter = get_io_adapter(kvm, id);

 if (!adapter || !adapter->maskable)
  return -EINVAL;
 ret = adapter->masked;
 adapter->masked = masked;
 return ret;
}
