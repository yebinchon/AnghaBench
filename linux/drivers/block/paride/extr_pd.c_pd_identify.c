
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pd_unit {scalar_t__ drive; int can_lba; int sectors; int heads; int cylinders; int capacity; int removable; int standby; int name; int pi; } ;
typedef enum action { ____Placeholder_action } action ;
typedef int __le32 ;
typedef int __le16 ;


 int DBMSG (char*) ;
 int DRIVE (struct pd_unit*) ;
 int Fail ;
 int IDE_IDENTIFY ;
 int Ok ;
 int PD_ID_LEN ;
 int PD_ID_OFF ;
 int STAT_DRQ ;
 int STAT_ERR ;
 void* le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int pd_init_dev_parms (struct pd_unit*) ;
 int pd_reset (struct pd_unit*) ;
 int* pd_scratch ;
 int pd_send_command (struct pd_unit*,int,int ,int ,int ,int ,int ) ;
 int pd_standby_off (struct pd_unit*) ;
 int pd_wait_for (struct pd_unit*,int ,int ) ;
 int pi_read_block (int ,int*,int) ;
 int printk (char*,int ,char*,char*,int,int,int,int,int,char*) ;
 int write_reg (struct pd_unit*,int,int ) ;

__attribute__((used)) static enum action pd_identify(struct pd_unit *disk)
{
 int j;
 char id[PD_ID_LEN + 1];







 if (disk->drive == 0)
  pd_reset(disk);

 write_reg(disk, 6, DRIVE(disk));
 pd_wait_for(disk, 0, DBMSG("before IDENT"));
 pd_send_command(disk, 1, 0, 0, 0, 0, IDE_IDENTIFY);

 if (pd_wait_for(disk, STAT_DRQ, DBMSG("IDENT DRQ")) & STAT_ERR)
  return Fail;
 pi_read_block(disk->pi, pd_scratch, 512);
 disk->can_lba = pd_scratch[99] & 2;
 disk->sectors = le16_to_cpu(*(__le16 *) (pd_scratch + 12));
 disk->heads = le16_to_cpu(*(__le16 *) (pd_scratch + 6));
 disk->cylinders = le16_to_cpu(*(__le16 *) (pd_scratch + 2));
 if (disk->can_lba)
  disk->capacity = le32_to_cpu(*(__le32 *) (pd_scratch + 120));
 else
  disk->capacity = disk->sectors * disk->heads * disk->cylinders;

 for (j = 0; j < PD_ID_LEN; j++)
  id[j ^ 1] = pd_scratch[j + PD_ID_OFF];
 j = PD_ID_LEN - 1;
 while ((j >= 0) && (id[j] <= 0x20))
  j--;
 j++;
 id[j] = 0;

 disk->removable = pd_scratch[0] & 0x80;

 printk("%s: %s, %s, %d blocks [%dM], (%d/%d/%d), %s media\n",
        disk->name, id,
        disk->drive ? "slave" : "master",
        disk->capacity, disk->capacity / 2048,
        disk->cylinders, disk->heads, disk->sectors,
        disk->removable ? "removable" : "fixed");

 if (disk->capacity)
  pd_init_dev_parms(disk);
 if (!disk->standby)
  pd_standby_off(disk);

 return Ok;
}
