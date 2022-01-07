
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mask; } ;
struct pcd_unit {TYPE_1__ info; int present; } ;


 int CDC_CD_R ;
 int CDC_CD_RW ;
 int CDC_CLOSE_TRAY ;
 int CDC_LOCK ;
 int CDC_OPEN_TRAY ;
 int CDC_PLAY_AUDIO ;
 int PCD_UNITS ;
 struct pcd_unit* pcd ;
 int pcd_atapi (struct pcd_unit*,char*,int,char*,char*) ;

__attribute__((used)) static void pcd_probe_capabilities(void)
{
 int unit, r;
 char buffer[32];
 char cmd[12] = { 0x5a, 1 << 3, 0x2a, 0, 0, 0, 0, 18, 0, 0, 0, 0 };
 struct pcd_unit *cd;

 for (unit = 0, cd = pcd; unit < PCD_UNITS; unit++, cd++) {
  if (!cd->present)
   continue;
  r = pcd_atapi(cd, cmd, 18, buffer, "mode sense capabilities");
  if (r)
   continue;

  if ((buffer[11] & 1) == 0)
   cd->info.mask |= CDC_CD_R;
  if ((buffer[11] & 2) == 0)
   cd->info.mask |= CDC_CD_RW;
  if ((buffer[12] & 1) == 0)
   cd->info.mask |= CDC_PLAY_AUDIO;
  if ((buffer[14] & 1) == 0)
   cd->info.mask |= CDC_LOCK;
  if ((buffer[14] & 8) == 0)
   cd->info.mask |= CDC_OPEN_TRAY;
  if ((buffer[14] >> 6) == 0)
   cd->info.mask |= CDC_CLOSE_TRAY;
 }
}
