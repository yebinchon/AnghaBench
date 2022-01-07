
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ec {int mutex; } ;


 int acpi_ec_stop (struct acpi_ec*,int) ;
 struct acpi_ec* first_ec ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void acpi_ec_block_transactions(void)
{
 struct acpi_ec *ec = first_ec;

 if (!ec)
  return;

 mutex_lock(&ec->mutex);

 acpi_ec_stop(ec, 1);
 mutex_unlock(&ec->mutex);
}
