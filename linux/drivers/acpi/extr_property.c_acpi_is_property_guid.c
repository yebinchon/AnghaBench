
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int guid_t ;


 int ARRAY_SIZE (int *) ;
 scalar_t__ guid_equal (int const*,int *) ;
 int * prp_guids ;

__attribute__((used)) static bool acpi_is_property_guid(const guid_t *guid)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(prp_guids); i++) {
  if (guid_equal(guid, &prp_guids[i]))
   return 1;
 }

 return 0;
}
