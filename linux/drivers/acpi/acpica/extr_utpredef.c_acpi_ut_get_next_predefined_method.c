
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int expected_btypes; } ;
union acpi_predefined_info {TYPE_1__ info; } ;


 int ACPI_RTYPE_ALL ;
 int ACPI_RTYPE_PACKAGE ;

const union acpi_predefined_info *acpi_ut_get_next_predefined_method(const union
             acpi_predefined_info
             *this_name)
{





 if ((this_name->info.expected_btypes & ACPI_RTYPE_PACKAGE) &&
     (this_name->info.expected_btypes != ACPI_RTYPE_ALL)) {
  this_name++;
 }

 this_name++;
 return (this_name);
}
