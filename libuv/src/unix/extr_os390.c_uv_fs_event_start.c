
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {char* path; int rfis_rftok; int cb; TYPE_1__* loop; } ;
typedef TYPE_2__ uv_fs_event_t ;
typedef int uv_fs_event_cb ;
struct TYPE_12__ {int msg_queue; } ;
typedef TYPE_3__ uv__os390_epoll ;
typedef int reg_struct ;
typedef int handle ;
struct TYPE_13__ {int __rfis_qid; int __rfis_type; TYPE_2__** __rfis_rftok; int __rfis_utok; int __rfis_cmd; } ;
typedef TYPE_4__ _RFIS ;
struct TYPE_10__ {TYPE_3__* ep; } ;


 int UV_EINVAL ;
 int UV_ENOMEM ;
 int UV__ERR (int ) ;
 int _IOCC_REGFILEINT ;
 int _RFIS_REG ;
 int __w_pioctl (char*,int ,int,TYPE_4__*) ;
 int assert (int) ;
 int errno ;
 int memcpy (int ,TYPE_2__**,int) ;
 int uv__handle_start (TYPE_2__*) ;
 scalar_t__ uv__is_active (TYPE_2__*) ;
 char* uv__strdup (char const*) ;

int uv_fs_event_start(uv_fs_event_t* handle, uv_fs_event_cb cb,
                      const char* filename, unsigned int flags) {
  uv__os390_epoll* ep;
  _RFIS reg_struct;
  char* path;
  int rc;

  if (uv__is_active(handle))
    return UV_EINVAL;

  ep = handle->loop->ep;
  assert(ep->msg_queue != -1);

  reg_struct.__rfis_cmd = _RFIS_REG;
  reg_struct.__rfis_qid = ep->msg_queue;
  reg_struct.__rfis_type = 1;
  memcpy(reg_struct.__rfis_utok, &handle, sizeof(handle));

  path = uv__strdup(filename);
  if (path == ((void*)0))
    return UV_ENOMEM;

  rc = __w_pioctl(path, _IOCC_REGFILEINT, sizeof(reg_struct), &reg_struct);
  if (rc != 0)
    return UV__ERR(errno);

  uv__handle_start(handle);
  handle->path = path;
  handle->cb = cb;
  memcpy(handle->rfis_rftok, reg_struct.__rfis_rftok,
         sizeof(handle->rfis_rftok));

  return 0;
}
