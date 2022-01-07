
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_chip {int acpi_dev_handle; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PPI_VS_REQ_END ;
 int PPI_VS_REQ_START ;
 int show_ppi_operations (int ,char*,int ,int ) ;
 struct tpm_chip* to_tpm_chip (struct device*) ;

__attribute__((used)) static ssize_t tpm_show_ppi_vs_operations(struct device *dev,
       struct device_attribute *attr,
       char *buf)
{
 struct tpm_chip *chip = to_tpm_chip(dev);

 return show_ppi_operations(chip->acpi_dev_handle, buf, PPI_VS_REQ_START,
       PPI_VS_REQ_END);
}
