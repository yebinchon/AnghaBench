
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_nfit_desc {scalar_t__ scrub_count_state; int scrub_count; int scrub_flags; int init_mutex; } ;


 int ARS_BUSY ;
 int clear_bit (int ,int *) ;
 int lockdep_assert_held (int *) ;
 int sysfs_notify_dirent (scalar_t__) ;

__attribute__((used)) static void notify_ars_done(struct acpi_nfit_desc *acpi_desc)
{
 lockdep_assert_held(&acpi_desc->init_mutex);

 clear_bit(ARS_BUSY, &acpi_desc->scrub_flags);
 acpi_desc->scrub_count++;
 if (acpi_desc->scrub_count_state)
  sysfs_notify_dirent(acpi_desc->scrub_count_state);
}
