
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_device {int id; } ;


 int SETFEATURE_SENSE_DATA ;
 int ata_dev_dbg (struct ata_device*,char*,unsigned int) ;
 unsigned int ata_dev_set_feature (struct ata_device*,int ,int) ;
 int ata_id_has_sense_reporting (int ) ;
 scalar_t__ ata_id_sense_reporting_enabled (int ) ;

__attribute__((used)) static void ata_dev_config_sense_reporting(struct ata_device *dev)
{
 unsigned int err_mask;

 if (!ata_id_has_sense_reporting(dev->id))
  return;

 if (ata_id_sense_reporting_enabled(dev->id))
  return;

 err_mask = ata_dev_set_feature(dev, SETFEATURE_SENSE_DATA, 0x1);
 if (err_mask) {
  ata_dev_dbg(dev,
       "failed to enable Sense Data Reporting, Emask 0x%x\n",
       err_mask);
 }
}
