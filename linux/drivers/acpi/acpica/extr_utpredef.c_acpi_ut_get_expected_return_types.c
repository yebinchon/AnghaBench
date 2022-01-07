
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ACPI_NUM_RTYPES ;
 int ACPI_RTYPE_INTEGER ;
 int strcat (char*,int *) ;
 int strcpy (char*,char*) ;
 int ** ut_rtype_names ;

void acpi_ut_get_expected_return_types(char *buffer, u32 expected_btypes)
{
 u32 this_rtype;
 u32 i;
 u32 j;

 if (!expected_btypes) {
  strcpy(buffer, "NONE");
  return;
 }

 j = 1;
 buffer[0] = 0;
 this_rtype = ACPI_RTYPE_INTEGER;

 for (i = 0; i < ACPI_NUM_RTYPES; i++) {



  if (expected_btypes & this_rtype) {
   strcat(buffer, &ut_rtype_names[i][j]);
   j = 0;
  }

  this_rtype <<= 1;
 }
}
