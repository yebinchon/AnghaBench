
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct ioapic_domain_cfg {int * ops; int type; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int EINVAL ;
 int ENOSYS ;
 int IOAPIC_DOMAIN_DYNAMIC ;
 int METHOD_NAME__UID ;
 int acpi_evaluate_integer (int ,int ,int *,unsigned long long*) ;
 int acpi_get_ioapic_id (int ,int ,int *) ;
 int acpi_handle_warn (int ,char*) ;
 int acpi_ioapic_lock ;
 int mp_ioapic_irqdomain_ops ;
 int mp_register_ioapic (int,int ,int ,struct ioapic_domain_cfg*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int acpi_register_ioapic(acpi_handle handle, u64 phys_addr, u32 gsi_base)
{
 int ret = -ENOSYS;
 return ret;
}
