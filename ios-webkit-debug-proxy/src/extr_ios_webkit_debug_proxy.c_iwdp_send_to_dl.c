
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* iwdp_t ;
typedef TYPE_2__* iwdp_idl_t ;
typedef TYPE_3__* dl_t ;
typedef int dl_status ;
struct TYPE_8__ {int state; } ;
struct TYPE_7__ {int dl_fd; TYPE_1__* self; } ;
struct TYPE_6__ {int (* send ) (TYPE_1__*,int,char const*,size_t) ;} ;


 int stub1 (TYPE_1__*,int,char const*,size_t) ;

dl_status iwdp_send_to_dl(dl_t dl, const char *buf, size_t length) {
  iwdp_idl_t idl = (iwdp_idl_t)dl->state;
  iwdp_t self = idl->self;
  int dl_fd = idl->dl_fd;
  return self->send(self, dl_fd, buf, length);
}
