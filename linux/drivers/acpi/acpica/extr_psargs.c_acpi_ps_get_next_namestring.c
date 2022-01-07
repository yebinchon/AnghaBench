
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct acpi_parse_state {int* aml; } ;


 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_IS_PARENT_PREFIX (int) ;
 scalar_t__ ACPI_IS_ROOT_PREFIX (int) ;
 int ACPI_NAMESEG_SIZE ;


 int ps_get_next_namestring ;
 int return_PTR (char*) ;

char *acpi_ps_get_next_namestring(struct acpi_parse_state *parser_state)
{
 u8 *start = parser_state->aml;
 u8 *end = parser_state->aml;

 ACPI_FUNCTION_TRACE(ps_get_next_namestring);



 while (ACPI_IS_ROOT_PREFIX(*end) || ACPI_IS_PARENT_PREFIX(*end)) {
  end++;
 }



 switch (*end) {
 case 0:



  if (end == start) {
   start = ((void*)0);
  }
  end++;
  break;

 case 129:



  end += 1 + (2 * ACPI_NAMESEG_SIZE);
  break;

 case 128:



  end += 2 + (*(end + 1) * ACPI_NAMESEG_SIZE);
  break;

 default:



  end += ACPI_NAMESEG_SIZE;
  break;
 }

 parser_state->aml = end;
 return_PTR((char *)start);
}
