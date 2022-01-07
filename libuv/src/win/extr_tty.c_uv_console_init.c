
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ Top; scalar_t__ Bottom; } ;
struct TYPE_5__ {int X; } ;
struct TYPE_7__ {TYPE_2__ srWindow; TYPE_1__ dwSize; } ;
typedef TYPE_3__ CONSOLE_SCREEN_BUFFER_INFO ;


 scalar_t__ CreateFileW (char*,int,int ,int ,int ,int ,int ) ;
 int FILE_SHARE_WRITE ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 scalar_t__ GetConsoleScreenBufferInfo (scalar_t__,TYPE_3__*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 int QueueUserWorkItem (int ,int *,int ) ;
 int WT_EXECUTELONGFUNCTION ;
 int abort () ;
 scalar_t__ uv__tty_console_handle ;
 scalar_t__ uv__tty_console_height ;
 int uv__tty_console_resize_message_loop_thread ;
 int uv__tty_console_resize_mutex ;
 int uv__tty_console_width ;
 int uv_mutex_init (int *) ;
 scalar_t__ uv_sem_init (int *,int) ;
 int uv_tty_output_lock ;

void uv_console_init(void) {
  if (uv_sem_init(&uv_tty_output_lock, 1))
    abort();
  uv__tty_console_handle = CreateFileW(L"CONOUT$",
                                       GENERIC_READ | GENERIC_WRITE,
                                       FILE_SHARE_WRITE,
                                       0,
                                       OPEN_EXISTING,
                                       0,
                                       0);
  if (uv__tty_console_handle != INVALID_HANDLE_VALUE) {
    CONSOLE_SCREEN_BUFFER_INFO sb_info;
    QueueUserWorkItem(uv__tty_console_resize_message_loop_thread,
                      ((void*)0),
                      WT_EXECUTELONGFUNCTION);
    uv_mutex_init(&uv__tty_console_resize_mutex);
    if (GetConsoleScreenBufferInfo(uv__tty_console_handle, &sb_info)) {
      uv__tty_console_width = sb_info.dwSize.X;
      uv__tty_console_height = sb_info.srWindow.Bottom - sb_info.srWindow.Top + 1;
    }
  }
}
