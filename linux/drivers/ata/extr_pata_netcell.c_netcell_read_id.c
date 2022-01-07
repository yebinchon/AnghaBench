
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ata_taskfile {int dummy; } ;
struct ata_device {int dummy; } ;


 size_t ATA_ID_CSF_DEFAULT ;
 unsigned int ata_do_dev_read_id (struct ata_device*,struct ata_taskfile*,int*) ;

__attribute__((used)) static unsigned int netcell_read_id(struct ata_device *adev,
     struct ata_taskfile *tf, u16 *id)
{
 unsigned int err_mask = ata_do_dev_read_id(adev, tf, id);

 if (err_mask == 0)
  id[ATA_ID_CSF_DEFAULT] |= 0x4000;
 return err_mask;
}
