
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_nfit_desc {unsigned int scrub_tmo; int dwork; int scrub_flags; int init_mutex; } ;


 int ARS_BUSY ;
 unsigned int HZ ;
 int lockdep_assert_held (int *) ;
 int nfit_wq ;
 int queue_delayed_work (int ,int *,unsigned int) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void __sched_ars(struct acpi_nfit_desc *acpi_desc, unsigned int tmo)
{
 lockdep_assert_held(&acpi_desc->init_mutex);

 set_bit(ARS_BUSY, &acpi_desc->scrub_flags);

 if (tmo)
  acpi_desc->scrub_tmo = tmo;
 queue_delayed_work(nfit_wq, &acpi_desc->dwork, tmo * HZ);
}
