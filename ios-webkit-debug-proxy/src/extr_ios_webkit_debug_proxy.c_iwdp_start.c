
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef TYPE_1__* iwdp_t ;
typedef int iwdp_status ;
typedef TYPE_2__* iwdp_private_t ;
typedef TYPE_3__* iwdp_idl_t ;
typedef TYPE_4__* dl_t ;
struct TYPE_20__ {int (* on_attach ) (TYPE_4__*,char*,int) ;scalar_t__ (* start ) (TYPE_4__*) ;} ;
struct TYPE_19__ {int dl_fd; TYPE_4__* dl; TYPE_1__* self; } ;
struct TYPE_18__ {scalar_t__ idl; } ;
struct TYPE_17__ {int (* subscribe ) (TYPE_1__*) ;int (* on_error ) (TYPE_1__*,char*) ;scalar_t__ (* add_fd ) (TYPE_1__*,int,int *,TYPE_3__*,int) ;TYPE_2__* private_state; } ;


 int IWDP_SUCCESS ;
 TYPE_3__* iwdp_idl_new () ;
 scalar_t__ iwdp_listen (TYPE_1__*,int *) ;
 int stub1 (TYPE_1__*,char*) ;
 int stub2 (TYPE_1__*) ;
 int stub3 (TYPE_1__*,char*) ;
 scalar_t__ stub4 (TYPE_1__*,int,int *,TYPE_3__*,int) ;
 int stub5 (TYPE_1__*,char*) ;
 scalar_t__ stub6 (TYPE_4__*) ;
 int stub7 (TYPE_1__*,char*) ;
 int stub8 (TYPE_4__*,char*,int) ;

iwdp_status iwdp_start(iwdp_t self) {
  iwdp_private_t my = self->private_state;
  if (my->idl) {
    return self->on_error(self, "Already started?");
  }

  if (iwdp_listen(self, ((void*)0))) {

  }

  iwdp_idl_t idl = iwdp_idl_new();
  idl->self = self;

  int dl_fd = self->subscribe(self);
  if (dl_fd < 0) {
    return self->on_error(self, "No device found, is it plugged in?");
  }
  idl->dl_fd = dl_fd;

  if (self->add_fd(self, dl_fd, ((void*)0), idl, 0)) {
    return self->on_error(self, "add_fd failed");
  }

  dl_t dl = idl->dl;
  if (dl->start(dl)) {
    return self->on_error(self, "Unable to start device_listener");
  }



  dl->on_attach(dl, "SIMULATOR", -1);

  return IWDP_SUCCESS;
}
