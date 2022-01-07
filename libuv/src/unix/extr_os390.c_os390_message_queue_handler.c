
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int path; int (* cb ) (TYPE_1__*,int ,int,int ) ;} ;
typedef TYPE_1__ uv_fs_event_t ;
struct TYPE_8__ {int msg_queue; } ;
typedef TYPE_2__ uv__os390_epoll ;
typedef int msg ;
struct TYPE_9__ {scalar_t__ __rfim_event; scalar_t__ __rfim_utok; } ;
typedef TYPE_3__ _RFIM ;


 scalar_t__ ENOMSG ;
 int IPC_NOWAIT ;
 int UV_CHANGE ;
 int UV_RENAME ;
 scalar_t__ _RFIM_ATTR ;
 scalar_t__ _RFIM_RENAME ;
 scalar_t__ _RFIM_WRITE ;
 int abort () ;
 scalar_t__ errno ;
 int msgrcv (int,TYPE_3__*,int,int ,int ) ;
 int stub1 (TYPE_1__*,int ,int,int ) ;
 int uv__basename_r (int ) ;

__attribute__((used)) static int os390_message_queue_handler(uv__os390_epoll* ep) {
  uv_fs_event_t* handle;
  int msglen;
  int events;
  _RFIM msg;

  if (ep->msg_queue == -1)
    return 0;

  msglen = msgrcv(ep->msg_queue, &msg, sizeof(msg), 0, IPC_NOWAIT);

  if (msglen == -1 && errno == ENOMSG)
    return 0;

  if (msglen == -1)
    abort();

  events = 0;
  if (msg.__rfim_event == _RFIM_ATTR || msg.__rfim_event == _RFIM_WRITE)
    events = UV_CHANGE;
  else if (msg.__rfim_event == _RFIM_RENAME)
    events = UV_RENAME;
  else

    return 0;

  handle = *(uv_fs_event_t**)(msg.__rfim_utok);
  handle->cb(handle, uv__basename_r(handle->path), events, 0);
  return 1;
}
