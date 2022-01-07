
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; int handle; int * read_cb; int * alloc_cb; } ;
typedef TYPE_1__ uv_tty_t ;
typedef int uv_tty_mode_t ;
typedef int * uv_read_cb ;
typedef int * uv_alloc_cb ;
typedef int DWORD ;


 int ENABLE_ECHO_INPUT ;
 int ENABLE_LINE_INPUT ;
 int ENABLE_PROCESSED_INPUT ;
 int ENABLE_WINDOW_INPUT ;
 int GetLastError () ;
 int SetConsoleMode (int ,int) ;
 int UV_EINVAL ;
 int UV_ENOTSUP ;
 int UV_HANDLE_READING ;
 int UV_HANDLE_TTY_RAW ;
 int UV_HANDLE_TTY_READABLE ;



 int uv_sem_post (int *) ;
 int uv_sem_wait (int *) ;
 int uv_translate_sys_error (int) ;
 int uv_tty_output_lock ;
 int uv_tty_read_start (TYPE_1__*,int *,int *) ;
 int uv_tty_read_stop (TYPE_1__*) ;

int uv_tty_set_mode(uv_tty_t* tty, uv_tty_mode_t mode) {
  DWORD flags;
  unsigned char was_reading;
  uv_alloc_cb alloc_cb;
  uv_read_cb read_cb;
  int err;

  if (!(tty->flags & UV_HANDLE_TTY_READABLE)) {
    return UV_EINVAL;
  }

  if (!!mode == !!(tty->flags & UV_HANDLE_TTY_RAW)) {
    return 0;
  }

  switch (mode) {
    case 129:
      flags = ENABLE_ECHO_INPUT | ENABLE_LINE_INPUT | ENABLE_PROCESSED_INPUT;
      break;
    case 128:
      flags = ENABLE_WINDOW_INPUT;
      break;
    case 130:
      return UV_ENOTSUP;
    default:
      return UV_EINVAL;
  }


  if (tty->flags & UV_HANDLE_READING) {
    was_reading = 1;
    alloc_cb = tty->alloc_cb;
    read_cb = tty->read_cb;
    err = uv_tty_read_stop(tty);
    if (err) {
      return uv_translate_sys_error(err);
    }
  } else {
    was_reading = 0;
    alloc_cb = ((void*)0);
    read_cb = ((void*)0);
  }

  uv_sem_wait(&uv_tty_output_lock);
  if (!SetConsoleMode(tty->handle, flags)) {
    err = uv_translate_sys_error(GetLastError());
    uv_sem_post(&uv_tty_output_lock);
    return err;
  }
  uv_sem_post(&uv_tty_output_lock);


  tty->flags &= ~UV_HANDLE_TTY_RAW;
  tty->flags |= mode ? UV_HANDLE_TTY_RAW : 0;


  if (was_reading) {
    err = uv_tty_read_start(tty, alloc_cb, read_cb);
    if (err) {
      return uv_translate_sys_error(err);
    }
  }

  return 0;
}
