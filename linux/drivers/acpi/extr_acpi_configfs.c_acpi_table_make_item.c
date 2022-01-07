
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_item {int dummy; } ;
struct config_group {int dummy; } ;
struct acpi_table {struct config_item cfg; } ;


 int ENOMEM ;
 struct config_item* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int acpi_table_type ;
 int config_item_init_type_name (struct config_item*,char const*,int *) ;
 struct acpi_table* kzalloc (int,int ) ;

__attribute__((used)) static struct config_item *acpi_table_make_item(struct config_group *group,
      const char *name)
{
 struct acpi_table *table;

 table = kzalloc(sizeof(*table), GFP_KERNEL);
 if (!table)
  return ERR_PTR(-ENOMEM);

 config_item_init_type_name(&table->cfg, name, &acpi_table_type);
 return &table->cfg;
}
