
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_10__ ;


typedef TYPE_2__* ws_t ;
typedef TYPE_3__* wi_t ;
typedef int ssize_t ;
typedef TYPE_4__* iwdp_type_t ;
typedef TYPE_5__* iwdp_t ;
typedef int iwdp_status ;
typedef TYPE_6__* iwdp_iws_t ;
typedef TYPE_7__* iwdp_iwi_t ;
typedef TYPE_8__* iwdp_ifs_t ;
typedef TYPE_9__* iwdp_idl_t ;
typedef TYPE_10__* dl_t ;
struct TYPE_27__ {TYPE_10__* dl; } ;
struct TYPE_26__ {TYPE_1__* iws; } ;
struct TYPE_25__ {TYPE_3__* wi; } ;
struct TYPE_24__ {TYPE_2__* ws; } ;
struct TYPE_23__ {int (* on_error ) (TYPE_5__*,char*,int) ;int (* remove_fd ) (TYPE_5__*,int) ;int (* send ) (TYPE_5__*,int,char const*,int ) ;} ;
struct TYPE_22__ {int type; } ;
struct TYPE_21__ {int (* on_recv ) (TYPE_3__*,char const*,int ) ;} ;
struct TYPE_20__ {int (* on_recv ) (TYPE_2__*,char const*,int ) ;} ;
struct TYPE_19__ {int ws_fd; } ;
struct TYPE_18__ {int (* on_recv ) (TYPE_10__*,char const*,int ) ;} ;






 int stub1 (TYPE_10__*,char const*,int ) ;
 int stub2 (TYPE_3__*,char const*,int ) ;
 int stub3 (TYPE_2__*,char const*,int ) ;
 int stub4 (TYPE_5__*,int,char const*,int ) ;
 int stub5 (TYPE_5__*,int) ;
 int stub6 (TYPE_5__*,char*,int) ;

iwdp_status iwdp_on_recv(iwdp_t self, int fd, void *value,
    const char *buf, ssize_t length) {
  int type = ((iwdp_type_t)value)->type;
  switch (type) {
    case 131:
      {
        dl_t dl = ((iwdp_idl_t)value)->dl;
        return dl->on_recv(dl, buf, length);
      }
    case 129:
      {
        wi_t wi = ((iwdp_iwi_t)value)->wi;
        return wi->on_recv(wi, buf, length);
      }
    case 128:
      {
        ws_t ws = ((iwdp_iws_t)value)->ws;
        return ws->on_recv(ws, buf, length);
      }
    case 130:
      {
        int ws_fd = ((iwdp_ifs_t)value)->iws->ws_fd;
        iwdp_status ret = self->send(self, ws_fd, buf, length);
        if (ret) {
          self->remove_fd(self, ws_fd);
        }
        return ret;
      }
    default:
      return self->on_error(self, "Unexpected recv type %d", type);
  }
}
