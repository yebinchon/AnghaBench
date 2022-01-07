
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int handle; } ;
typedef TYPE_1__ uv_tty_t ;
typedef int CONSOLE_SCREEN_BUFFER_INFO ;


 int GetConsoleScreenBufferInfo (int ,int *) ;
 int GetLastError () ;
 int uv_sem_post (int *) ;
 int uv_sem_wait (int *) ;
 int uv_translate_sys_error (int ) ;
 int uv_tty_output_lock ;
 int uv_tty_update_virtual_window (int *) ;
 int uv_tty_virtual_height ;
 int uv_tty_virtual_width ;

int uv_tty_get_winsize(uv_tty_t* tty, int* width, int* height) {
  CONSOLE_SCREEN_BUFFER_INFO info;

  if (!GetConsoleScreenBufferInfo(tty->handle, &info)) {
    return uv_translate_sys_error(GetLastError());
  }

  uv_sem_wait(&uv_tty_output_lock);
  uv_tty_update_virtual_window(&info);
  uv_sem_post(&uv_tty_output_lock);

  *width = uv_tty_virtual_width;
  *height = uv_tty_virtual_height;

  return 0;
}
