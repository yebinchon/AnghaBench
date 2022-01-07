
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct openpic {int mmio; int kvm; } ;


 int KVM_MMIO_BUS ;
 int kvm_io_bus_unregister_dev (int ,int ,int *) ;

__attribute__((used)) static void unmap_mmio(struct openpic *opp)
{
 kvm_io_bus_unregister_dev(opp->kvm, KVM_MMIO_BUS, &opp->mmio);
}
