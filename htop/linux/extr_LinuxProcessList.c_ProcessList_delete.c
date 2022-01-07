
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ netlink_socket; struct TYPE_3__* ttyDrivers; struct TYPE_3__* path; struct TYPE_3__* cpus; } ;
typedef int ProcessList ;
typedef TYPE_1__ LinuxProcessList ;


 int ProcessList_done (int *) ;
 int free (TYPE_1__*) ;
 int nl_close (scalar_t__) ;
 int nl_socket_free (scalar_t__) ;

void ProcessList_delete(ProcessList* pl) {
   LinuxProcessList* this = (LinuxProcessList*) pl;
   ProcessList_done(pl);
   free(this->cpus);
   if (this->ttyDrivers) {
      for(int i = 0; this->ttyDrivers[i].path; i++) {
         free(this->ttyDrivers[i].path);
      }
      free(this->ttyDrivers);
   }






   free(this);
}
