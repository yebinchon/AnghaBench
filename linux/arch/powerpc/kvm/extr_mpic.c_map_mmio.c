
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct openpic {int mmio; int reg_base; int kvm; } ;


 int KVM_MMIO_BUS ;
 int OPENPIC_REG_SIZE ;
 int kvm_io_bus_register_dev (int ,int ,int ,int ,int *) ;
 int kvm_iodevice_init (int *,int *) ;
 int mpic_mmio_ops ;

__attribute__((used)) static void map_mmio(struct openpic *opp)
{
 kvm_iodevice_init(&opp->mmio, &mpic_mmio_ops);

 kvm_io_bus_register_dev(opp->kvm, KVM_MMIO_BUS,
    opp->reg_base, OPENPIC_REG_SIZE,
    &opp->mmio);
}
