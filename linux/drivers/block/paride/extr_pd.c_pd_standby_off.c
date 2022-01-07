
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pd_unit {int dummy; } ;


 int DBMSG (char*) ;
 int IDE_STANDBY ;
 int pd_send_command (struct pd_unit*,int ,int ,int ,int ,int ,int ) ;
 int pd_wait_for (struct pd_unit*,int ,int ) ;

__attribute__((used)) static void pd_standby_off(struct pd_unit *disk)
{
 pd_wait_for(disk, 0, DBMSG("before STANDBY"));
 pd_send_command(disk, 0, 0, 0, 0, 0, IDE_STANDBY);
 pd_wait_for(disk, 0, DBMSG("after STANDBY"));
}
