
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_table_header {int dummy; } ;
struct acpi_table_attr {int node; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_BAD_PARAMETER ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KOBJ_ADD ;
 int acpi_get_table_by_index (int,struct acpi_table_header**) ;
 int acpi_kobj ;
 int acpi_table_attr_init (int ,struct acpi_table_attr*,struct acpi_table_header*) ;
 int acpi_table_attr_list ;
 int acpi_table_data_init (struct acpi_table_header*) ;
 int dynamic_tables_kobj ;
 int kfree (struct acpi_table_attr*) ;
 int kobject_create_and_add (char*,int ) ;
 int kobject_put (int ) ;
 int kobject_uevent (int ,int ) ;
 struct acpi_table_attr* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int tables_data_kobj ;
 int tables_kobj ;

__attribute__((used)) static int acpi_tables_sysfs_init(void)
{
 struct acpi_table_attr *table_attr;
 struct acpi_table_header *table_header = ((void*)0);
 int table_index;
 acpi_status status;
 int ret;

 tables_kobj = kobject_create_and_add("tables", acpi_kobj);
 if (!tables_kobj)
  goto err;

 tables_data_kobj = kobject_create_and_add("data", tables_kobj);
 if (!tables_data_kobj)
  goto err_tables_data;

 dynamic_tables_kobj = kobject_create_and_add("dynamic", tables_kobj);
 if (!dynamic_tables_kobj)
  goto err_dynamic_tables;

 for (table_index = 0;; table_index++) {
  status = acpi_get_table_by_index(table_index, &table_header);

  if (status == AE_BAD_PARAMETER)
   break;

  if (ACPI_FAILURE(status))
   continue;

  table_attr = kzalloc(sizeof(*table_attr), GFP_KERNEL);
  if (!table_attr)
   return -ENOMEM;

  ret = acpi_table_attr_init(tables_kobj,
        table_attr, table_header);
  if (ret) {
   kfree(table_attr);
   return ret;
  }
  list_add_tail(&table_attr->node, &acpi_table_attr_list);
  acpi_table_data_init(table_header);
 }

 kobject_uevent(tables_kobj, KOBJ_ADD);
 kobject_uevent(tables_data_kobj, KOBJ_ADD);
 kobject_uevent(dynamic_tables_kobj, KOBJ_ADD);

 return 0;
err_dynamic_tables:
 kobject_put(tables_data_kobj);
err_tables_data:
 kobject_put(tables_kobj);
err:
 return -ENOMEM;
}
