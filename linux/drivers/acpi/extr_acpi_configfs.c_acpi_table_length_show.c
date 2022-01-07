
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_item {int dummy; } ;
struct acpi_table_header {int length; } ;
typedef int ssize_t ;


 int EINVAL ;
 struct acpi_table_header* get_header (struct config_item*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t acpi_table_length_show(struct config_item *cfg, char *str)
{
 struct acpi_table_header *h = get_header(cfg);

 if (!h)
  return -EINVAL;

 return sprintf(str, "%d\n", h->length);
}
