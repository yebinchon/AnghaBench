
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {struct block_device* bd_contains; } ;


 int CAP_SYS_RAWIO ;
 int ENOIOCTLCMD ;
 scalar_t__ capable (int ) ;

int scsi_verify_blk_ioctl(struct block_device *bd, unsigned int cmd)
{
 if (bd && bd == bd->bd_contains)
  return 0;

 if (capable(CAP_SYS_RAWIO))
  return 0;

 return -ENOIOCTLCMD;
}
