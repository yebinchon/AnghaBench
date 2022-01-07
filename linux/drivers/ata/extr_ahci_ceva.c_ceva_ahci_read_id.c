
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
typedef int u16 ;
struct ata_taskfile {int dummy; } ;
struct ata_device {int dummy; } ;


 size_t ATA_ID_FEATURE_SUPP ;
 unsigned int ata_do_dev_read_id (struct ata_device*,struct ata_taskfile*,int *) ;
 int cpu_to_le16 (int) ;

__attribute__((used)) static unsigned int ceva_ahci_read_id(struct ata_device *dev,
     struct ata_taskfile *tf, u16 *id)
{
 u32 err_mask;

 err_mask = ata_do_dev_read_id(dev, tf, id);
 if (err_mask)
  return err_mask;




 id[ATA_ID_FEATURE_SUPP] &= cpu_to_le16(~(1 << 8));

 return 0;
}
