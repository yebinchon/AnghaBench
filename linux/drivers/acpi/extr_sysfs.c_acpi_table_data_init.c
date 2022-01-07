
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct acpi_table_header {int signature; } ;
struct TYPE_5__ {int mode; } ;
struct TYPE_4__ {TYPE_2__ attr; int read; } ;
struct acpi_data_attr {TYPE_1__ attr; } ;
struct TYPE_6__ {int (* fn ) (struct acpi_table_header*,struct acpi_data_attr*) ;int name; } ;


 scalar_t__ ACPI_COMPARE_NAMESEG (int ,int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NUM_ACPI_DATA_OBJS ;
 TYPE_3__* acpi_data_objs ;
 int acpi_data_show ;
 struct acpi_data_attr* kzalloc (int,int ) ;
 int stub1 (struct acpi_table_header*,struct acpi_data_attr*) ;
 int sysfs_attr_init (TYPE_2__*) ;

__attribute__((used)) static int acpi_table_data_init(struct acpi_table_header *th)
{
 struct acpi_data_attr *data_attr;
 int i;

 for (i = 0; i < NUM_ACPI_DATA_OBJS; i++) {
  if (ACPI_COMPARE_NAMESEG(th->signature, acpi_data_objs[i].name)) {
   data_attr = kzalloc(sizeof(*data_attr), GFP_KERNEL);
   if (!data_attr)
    return -ENOMEM;
   sysfs_attr_init(&data_attr->attr.attr);
   data_attr->attr.read = acpi_data_show;
   data_attr->attr.attr.mode = 0400;
   return acpi_data_objs[i].fn(th, data_attr);
  }
 }
 return 0;
}
