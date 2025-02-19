
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ata_device {int horkage; int id; } ;
typedef int ssize_t ;


 int ATA_HORKAGE_NOTRIM ;
 int ATA_HORKAGE_NO_NCQ_TRIM ;
 scalar_t__ ata_fpdma_dsm_supported (struct ata_device*) ;
 int ata_id_has_trim (int ) ;
 int snprintf (char*,int,char*,unsigned char*) ;
 struct ata_device* transport_class_to_dev (struct device*) ;

__attribute__((used)) static ssize_t
show_ata_dev_trim(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct ata_device *ata_dev = transport_class_to_dev(dev);
 unsigned char *mode;

 if (!ata_id_has_trim(ata_dev->id))
  mode = "unsupported";
 else if (ata_dev->horkage & ATA_HORKAGE_NOTRIM)
  mode = "forced_unsupported";
 else if (ata_dev->horkage & ATA_HORKAGE_NO_NCQ_TRIM)
   mode = "forced_unqueued";
 else if (ata_fpdma_dsm_supported(ata_dev))
  mode = "queued";
 else
  mode = "unqueued";

 return snprintf(buf, 20, "%s\n", mode);
}
