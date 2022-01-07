
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_1__* sm_t ;
typedef TYPE_2__* iwdpm_t ;
typedef TYPE_3__* iwdp_t ;
typedef int WSADATA ;
struct TYPE_13__ {scalar_t__ (* start ) (TYPE_3__*) ;} ;
struct TYPE_12__ {TYPE_1__* sm; TYPE_3__* iwdp; } ;
struct TYPE_11__ {scalar_t__ (* select ) (TYPE_1__*,int) ;int (* cleanup ) (TYPE_1__*) ;} ;


 int MAKEWORD (int,int) ;
 int SIGINT ;
 int SIGTERM ;
 int WSACleanup () ;
 int WSAStartup (int ,int *) ;
 int exit (int) ;
 int fprintf (int ,char*,int) ;
 int iwdpm_configure (TYPE_2__*,int,char**) ;
 int iwdpm_create_bridge (TYPE_2__*) ;
 int iwdpm_free (TYPE_2__*) ;
 TYPE_2__* iwdpm_new () ;
 int on_signal ;
 int quit_flag ;
 int signal (int ,int ) ;
 int stderr ;
 scalar_t__ stub1 (TYPE_3__*) ;
 scalar_t__ stub2 (TYPE_1__*,int) ;
 int stub3 (TYPE_1__*) ;

int main(int argc, char** argv) {
  signal(SIGINT, on_signal);
  signal(SIGTERM, on_signal);
  iwdpm_t self = iwdpm_new();
  int ret = iwdpm_configure(self, argc, argv);
  if (ret) {
    exit(ret > 0 ? ret : 0);
    return ret;
  }

  iwdpm_create_bridge(self);

  iwdp_t iwdp = self->iwdp;
  if (iwdp->start(iwdp)) {
    return -1;
  }

  sm_t sm = self->sm;
  while (!quit_flag) {
    if (sm->select(sm, 2) < 0) {
      ret = -1;
      break;
    }
  }
  sm->cleanup(sm);
  iwdpm_free(self);



  return ret;
}
