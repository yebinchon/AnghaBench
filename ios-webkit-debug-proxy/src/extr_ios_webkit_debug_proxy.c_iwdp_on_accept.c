
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* iwdp_type_t ;
typedef TYPE_2__* iwdp_t ;
typedef int iwdp_status ;
typedef int iwdp_iws_t ;
typedef int iwdp_iport_t ;
struct TYPE_7__ {int (* on_error ) (TYPE_2__*,char*,int) ;} ;
struct TYPE_6__ {int type; } ;


 int TYPE_IPORT ;
 int iwdp_iport_accept (TYPE_2__*,int ,int,int *) ;
 int stub1 (TYPE_2__*,char*,int) ;

iwdp_status iwdp_on_accept(iwdp_t self, int s_fd, void *value,
    int fd, void **to_value) {
  int type = ((iwdp_type_t)value)->type;
  if (type == TYPE_IPORT) {
    return iwdp_iport_accept(self, (iwdp_iport_t)value, fd,
        (iwdp_iws_t*)to_value);
  } else {
    return self->on_error(self, "Unexpected accept type %d", type);
  }
}
