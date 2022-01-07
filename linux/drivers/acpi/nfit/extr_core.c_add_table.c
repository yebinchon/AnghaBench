
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfit_table_prev {int dummy; } ;
struct device {int dummy; } ;
struct acpi_nfit_header {int length; int type; } ;
struct acpi_nfit_desc {struct device* dev; } ;
 int ENOMEM ;
 void* ERR_PTR (int ) ;
 int add_bdw (struct acpi_nfit_desc*,struct nfit_table_prev*,void*) ;
 int add_dcr (struct acpi_nfit_desc*,struct nfit_table_prev*,void*) ;
 int add_flush (struct acpi_nfit_desc*,struct nfit_table_prev*,void*) ;
 int add_idt (struct acpi_nfit_desc*,struct nfit_table_prev*,void*) ;
 int add_memdev (struct acpi_nfit_desc*,struct nfit_table_prev*,void*) ;
 int add_platform_cap (struct acpi_nfit_desc*,void*) ;
 int add_spa (struct acpi_nfit_desc*,struct nfit_table_prev*,void*) ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*,int) ;
 int dev_warn (struct device*,char*,int) ;

__attribute__((used)) static void *add_table(struct acpi_nfit_desc *acpi_desc,
  struct nfit_table_prev *prev, void *table, const void *end)
{
 struct device *dev = acpi_desc->dev;
 struct acpi_nfit_header *hdr;
 void *err = ERR_PTR(-ENOMEM);

 if (table >= end)
  return ((void*)0);

 hdr = table;
 if (!hdr->length) {
  dev_warn(dev, "found a zero length table '%d' parsing nfit\n",
   hdr->type);
  return ((void*)0);
 }

 switch (hdr->type) {
 case 128:
  if (!add_spa(acpi_desc, prev, table))
   return err;
  break;
 case 130:
  if (!add_memdev(acpi_desc, prev, table))
   return err;
  break;
 case 134:
  if (!add_dcr(acpi_desc, prev, table))
   return err;
  break;
 case 133:
  if (!add_bdw(acpi_desc, prev, table))
   return err;
  break;
 case 131:
  if (!add_idt(acpi_desc, prev, table))
   return err;
  break;
 case 132:
  if (!add_flush(acpi_desc, prev, table))
   return err;
  break;
 case 129:
  dev_dbg(dev, "smbios\n");
  break;
 case 135:
  if (!add_platform_cap(acpi_desc, table))
   return err;
  break;
 default:
  dev_err(dev, "unknown table '%d' parsing nfit\n", hdr->type);
  break;
 }

 return table + hdr->length;
}
