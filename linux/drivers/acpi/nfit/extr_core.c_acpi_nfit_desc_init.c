
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm_bus_descriptor {char* provider_name; int attr_groups; int clear_to_send; int flush_probe; int ndctl; int module; } ;
struct device {int dummy; } ;
struct acpi_nfit_desc {int scrub_tmo; int dwork; int init_mutex; int list; int dimms; int memdevs; int flushes; int idts; int bdws; int dcrs; int spas; struct nvdimm_bus_descriptor nd_desc; int blk_do_io; struct device* dev; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int THIS_MODULE ;
 int acpi_nfit_attribute_groups ;
 int acpi_nfit_blk_region_do_io ;
 int acpi_nfit_clear_to_send ;
 int acpi_nfit_ctl ;
 int acpi_nfit_flush_probe ;
 int acpi_nfit_scrub ;
 int dev_set_drvdata (struct device*,struct acpi_nfit_desc*) ;
 int mutex_init (int *) ;

void acpi_nfit_desc_init(struct acpi_nfit_desc *acpi_desc, struct device *dev)
{
 struct nvdimm_bus_descriptor *nd_desc;

 dev_set_drvdata(dev, acpi_desc);
 acpi_desc->dev = dev;
 acpi_desc->blk_do_io = acpi_nfit_blk_region_do_io;
 nd_desc = &acpi_desc->nd_desc;
 nd_desc->provider_name = "ACPI.NFIT";
 nd_desc->module = THIS_MODULE;
 nd_desc->ndctl = acpi_nfit_ctl;
 nd_desc->flush_probe = acpi_nfit_flush_probe;
 nd_desc->clear_to_send = acpi_nfit_clear_to_send;
 nd_desc->attr_groups = acpi_nfit_attribute_groups;

 INIT_LIST_HEAD(&acpi_desc->spas);
 INIT_LIST_HEAD(&acpi_desc->dcrs);
 INIT_LIST_HEAD(&acpi_desc->bdws);
 INIT_LIST_HEAD(&acpi_desc->idts);
 INIT_LIST_HEAD(&acpi_desc->flushes);
 INIT_LIST_HEAD(&acpi_desc->memdevs);
 INIT_LIST_HEAD(&acpi_desc->dimms);
 INIT_LIST_HEAD(&acpi_desc->list);
 mutex_init(&acpi_desc->init_mutex);
 acpi_desc->scrub_tmo = 1;
 INIT_DELAYED_WORK(&acpi_desc->dwork, acpi_nfit_scrub);
}
