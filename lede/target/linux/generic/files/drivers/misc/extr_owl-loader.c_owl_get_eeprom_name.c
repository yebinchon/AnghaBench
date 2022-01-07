
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;
struct ath9k_platform_data {char const* eeprom_name; } ;


 int EEPROM_FILENAME_LEN ;
 int GFP_KERNEL ;
 int dev_dbg (struct device*,char*) ;
 struct ath9k_platform_data* dev_get_platdata (struct device*) ;
 int dev_name (struct device*) ;
 char* devm_kzalloc (struct device*,int ,int ) ;
 int scnprintf (char*,int ,char*,int ) ;

__attribute__((used)) static const char *owl_get_eeprom_name(struct pci_dev *pdev)
{
 struct device *dev = &pdev->dev;
 struct ath9k_platform_data *pdata;
 char *eeprom_name;


 pdata = dev_get_platdata(dev);
 if (pdata && pdata->eeprom_name)
  return pdata->eeprom_name;

 dev_dbg(dev, "using auto-generated eeprom filename\n");

 eeprom_name = devm_kzalloc(dev, EEPROM_FILENAME_LEN, GFP_KERNEL);
 if (!eeprom_name)
  return ((void*)0);


 scnprintf(eeprom_name, EEPROM_FILENAME_LEN, "ath9k-eeprom-pci-%s.bin",
    dev_name(dev));

 return eeprom_name;
}
