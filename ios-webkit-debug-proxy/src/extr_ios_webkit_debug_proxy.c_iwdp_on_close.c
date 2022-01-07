
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* iwdp_type_t ;
typedef TYPE_2__* iwdp_t ;
typedef int iwdp_status ;
typedef int iwdp_iws_t ;
typedef int iwdp_iwi_t ;
typedef int iwdp_iport_t ;
typedef int iwdp_ifs_t ;
typedef int iwdp_idl_t ;
struct TYPE_11__ {int (* on_error ) (TYPE_2__*,char*,int) ;} ;
struct TYPE_10__ {int type; } ;







 int iwdp_idl_close (TYPE_2__*,int ) ;
 int iwdp_ifs_close (TYPE_2__*,int ) ;
 int iwdp_iport_close (TYPE_2__*,int ) ;
 int iwdp_iwi_close (TYPE_2__*,int ) ;
 int iwdp_iws_close (TYPE_2__*,int ) ;
 int stub1 (TYPE_2__*,char*,int) ;

iwdp_status iwdp_on_close(iwdp_t self, int fd, void *value, bool is_server) {
  int type = ((iwdp_type_t)value)->type;
  switch (type) {
    case 132:
      return iwdp_idl_close(self, (iwdp_idl_t)value);
    case 130:
      return iwdp_iport_close(self, (iwdp_iport_t)value);
    case 129:
      return iwdp_iwi_close(self, (iwdp_iwi_t)value);
    case 128:
      return iwdp_iws_close(self, (iwdp_iws_t)value);
    case 131:
      return iwdp_ifs_close(self, (iwdp_ifs_t)value);
    default:
      return self->on_error(self, "Unknown close type %d", type);
  }
}
