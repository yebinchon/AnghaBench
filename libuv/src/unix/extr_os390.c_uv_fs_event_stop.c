
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int rfis_rftok; TYPE_1__* loop; } ;
typedef TYPE_2__ uv_fs_event_t ;
struct TYPE_11__ {int msg_queue; } ;
typedef TYPE_3__ uv__os390_epoll ;
typedef int reg_struct ;
struct TYPE_12__ {int __rfis_qid; int __rfis_type; int __rfis_rftok; int __rfis_cmd; } ;
typedef TYPE_4__ _RFIS ;
struct TYPE_9__ {TYPE_3__* ep; } ;


 scalar_t__ EALREADY ;
 scalar_t__ ENOENT ;
 int _IOCC_REGFILEINT ;
 int _RFIS_UNREG ;
 int __w_pioctl (char*,int ,int,TYPE_4__*) ;
 int abort () ;
 int assert (int) ;
 scalar_t__ errno ;
 int memcpy (int ,int ,int) ;
 int uv__handle_stop (TYPE_2__*) ;
 int uv__is_active (TYPE_2__*) ;

int uv_fs_event_stop(uv_fs_event_t* handle) {
  uv__os390_epoll* ep;
  _RFIS reg_struct;
  int rc;

  if (!uv__is_active(handle))
    return 0;

  ep = handle->loop->ep;
  assert(ep->msg_queue != -1);

  reg_struct.__rfis_cmd = _RFIS_UNREG;
  reg_struct.__rfis_qid = ep->msg_queue;
  reg_struct.__rfis_type = 1;
  memcpy(reg_struct.__rfis_rftok, handle->rfis_rftok,
         sizeof(handle->rfis_rftok));






  rc = __w_pioctl("/", _IOCC_REGFILEINT, sizeof(reg_struct), &reg_struct);
  if (rc != 0 && errno != EALREADY && errno != ENOENT)
    abort();

  uv__handle_stop(handle);

  return 0;
}
