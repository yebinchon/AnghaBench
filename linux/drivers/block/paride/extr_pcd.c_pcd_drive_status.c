
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcd_unit {int dummy; } ;
struct cdrom_device_info {struct pcd_unit* handle; } ;


 int CDS_DISC_OK ;
 int CDS_DRIVE_NOT_READY ;
 int CDS_NO_DISC ;
 int DBMSG (char*) ;
 int PCD_READY_TMO ;
 scalar_t__ pcd_atapi (struct pcd_unit*,char*,int,int ,int ) ;
 scalar_t__ pcd_ready_wait (struct pcd_unit*,int ) ;
 int pcd_scratch ;

__attribute__((used)) static int pcd_drive_status(struct cdrom_device_info *cdi, int slot_nr)
{
 char rc_cmd[12] = { 0x25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
 struct pcd_unit *cd = cdi->handle;

 if (pcd_ready_wait(cd, PCD_READY_TMO))
  return CDS_DRIVE_NOT_READY;
 if (pcd_atapi(cd, rc_cmd, 8, pcd_scratch, DBMSG("check media")))
  return CDS_NO_DISC;
 return CDS_DISC_OK;
}
