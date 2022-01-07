
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int length; } ;
struct acpi_table_bert {int region_length; int address; TYPE_2__ header; } ;
struct acpi_hest_generic_status {int dummy; } ;
struct TYPE_4__ {char* name; } ;
struct TYPE_6__ {int size; TYPE_1__ attr; } ;
struct acpi_data_attr {TYPE_3__ attr; int addr; } ;


 int EINVAL ;
 int kfree (struct acpi_data_attr*) ;
 int sysfs_create_bin_file (int ,TYPE_3__*) ;
 int tables_data_kobj ;

__attribute__((used)) static int acpi_bert_data_init(void *th, struct acpi_data_attr *data_attr)
{
 struct acpi_table_bert *bert = th;

 if (bert->header.length < sizeof(struct acpi_table_bert) ||
     bert->region_length < sizeof(struct acpi_hest_generic_status)) {
  kfree(data_attr);
  return -EINVAL;
 }
 data_attr->addr = bert->address;
 data_attr->attr.size = bert->region_length;
 data_attr->attr.attr.name = "BERT";

 return sysfs_create_bin_file(tables_data_kobj, &data_attr->attr);
}
