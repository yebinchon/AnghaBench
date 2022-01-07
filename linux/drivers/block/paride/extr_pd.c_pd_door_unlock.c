
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pd_unit {int dummy; } ;
typedef enum action { ____Placeholder_action } action ;


 int IDE_DOORUNLOCK ;
 int Ok ;
 int STAT_ERR ;
 int STAT_READY ;
 int pd_send_command (struct pd_unit*,int,int ,int ,int ,int ,int ) ;
 int pd_wait_for (struct pd_unit*,int ,char*) ;

__attribute__((used)) static enum action pd_door_unlock(struct pd_unit *disk)
{
 if (!(pd_wait_for(disk, STAT_READY, "Lock") & STAT_ERR)) {
  pd_send_command(disk, 1, 0, 0, 0, 0, IDE_DOORUNLOCK);
  pd_wait_for(disk, STAT_READY, "Lock done");
 }
 return Ok;
}
