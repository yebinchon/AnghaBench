
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s390_io_adapter {int dummy; } ;
struct TYPE_2__ {struct s390_io_adapter** adapters; } ;
struct kvm {TYPE_1__ arch; } ;


 unsigned int MAX_S390_IO_ADAPTERS ;
 unsigned int array_index_nospec (unsigned int,unsigned int) ;

__attribute__((used)) static struct s390_io_adapter *get_io_adapter(struct kvm *kvm, unsigned int id)
{
 if (id >= MAX_S390_IO_ADAPTERS)
  return ((void*)0);
 id = array_index_nospec(id, MAX_S390_IO_ADAPTERS);
 return kvm->arch.adapters[id];
}
