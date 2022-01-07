
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* sm_t ;
typedef int sm_status ;
typedef TYPE_2__* sm_private_t ;
struct TYPE_6__ {int max_fd; int all_fds; } ;
struct TYPE_5__ {int (* remove_fd ) (TYPE_1__*,int) ;TYPE_2__* private_state; } ;


 scalar_t__ FD_ISSET (int,int ) ;
 int SM_SUCCESS ;
 int stub1 (TYPE_1__*,int) ;

sm_status sm_cleanup(sm_t self) {
  sm_private_t my = self->private_state;
  int fd;
  for (fd = 0; fd <= my->max_fd; fd++) {
    if (FD_ISSET(fd, my->all_fds)) {
      self->remove_fd(self, fd);
    }
  }
  return SM_SUCCESS;
}
