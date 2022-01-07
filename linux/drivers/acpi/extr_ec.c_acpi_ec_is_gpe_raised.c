
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ec {int gpe; } ;
typedef int acpi_event_status ;


 int ACPI_EVENT_FLAG_STATUS_SET ;
 int acpi_get_gpe_status (int *,int ,int*) ;

__attribute__((used)) static inline bool acpi_ec_is_gpe_raised(struct acpi_ec *ec)
{
 acpi_event_status gpe_status = 0;

 (void)acpi_get_gpe_status(((void*)0), ec->gpe, &gpe_status);
 return (gpe_status & ACPI_EVENT_FLAG_STATUS_SET) ? 1 : 0;
}
