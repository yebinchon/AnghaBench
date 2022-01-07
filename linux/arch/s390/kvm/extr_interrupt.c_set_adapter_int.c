
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s390_io_adapter {int masked; int maps_lock; } ;
struct TYPE_2__ {int adapter_id; } ;
struct kvm_kernel_irq_routing_entry {TYPE_1__ adapter; } ;
struct kvm {int dummy; } ;


 int adapter_indicators_set (struct kvm*,struct s390_io_adapter*,TYPE_1__*) ;
 int down_read (int *) ;
 struct s390_io_adapter* get_io_adapter (struct kvm*,int ) ;
 int kvm_s390_inject_airq (struct kvm*,struct s390_io_adapter*) ;
 int up_read (int *) ;

__attribute__((used)) static int set_adapter_int(struct kvm_kernel_irq_routing_entry *e,
      struct kvm *kvm, int irq_source_id, int level,
      bool line_status)
{
 int ret;
 struct s390_io_adapter *adapter;


 if (!level)
  return 0;
 adapter = get_io_adapter(kvm, e->adapter.adapter_id);
 if (!adapter)
  return -1;
 down_read(&adapter->maps_lock);
 ret = adapter_indicators_set(kvm, adapter, &e->adapter);
 up_read(&adapter->maps_lock);
 if ((ret > 0) && !adapter->masked) {
  ret = kvm_s390_inject_airq(kvm, adapter);
  if (ret == 0)
   ret = 1;
 }
 return ret;
}
