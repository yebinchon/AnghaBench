
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pd_unit {scalar_t__ heads; int sectors; } ;


 char* DBMSG (char*) ;
 int IDE_INIT_DEV_PARMS ;
 int pd_send_command (struct pd_unit*,int ,int ,scalar_t__,int ,int ,int ) ;
 int pd_wait_for (struct pd_unit*,int ,char*) ;
 int udelay (int) ;

__attribute__((used)) static void pd_init_dev_parms(struct pd_unit *disk)
{
 pd_wait_for(disk, 0, DBMSG("before init_dev_parms"));
 pd_send_command(disk, disk->sectors, 0, disk->heads - 1, 0, 0,
   IDE_INIT_DEV_PARMS);
 udelay(300);
 pd_wait_for(disk, 0, "Initialise device parameters");
}
