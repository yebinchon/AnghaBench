
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int ACPI_100NSEC_PER_SEC ;
 int HZ ;
 int INITIAL_JIFFIES ;
 int get_jiffies_64 () ;

u64 acpi_os_get_timer(void)
{
 return (get_jiffies_64() - INITIAL_JIFFIES) *
  (ACPI_100NSEC_PER_SEC / HZ);
}
