
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; } ;
struct acpi_table_einj {int header_length; int entries; TYPE_1__ header; } ;
struct acpi_einj_entry {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int einj_check_table(struct acpi_table_einj *einj_tab)
{
 if ((einj_tab->header_length !=
      (sizeof(struct acpi_table_einj) - sizeof(einj_tab->header)))
     && (einj_tab->header_length != sizeof(struct acpi_table_einj)))
  return -EINVAL;
 if (einj_tab->header.length < sizeof(struct acpi_table_einj))
  return -EINVAL;
 if (einj_tab->entries !=
     (einj_tab->header.length - sizeof(struct acpi_table_einj)) /
     sizeof(struct acpi_einj_entry))
  return -EINVAL;

 return 0;
}
