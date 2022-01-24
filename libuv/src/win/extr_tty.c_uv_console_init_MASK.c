#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ Top; scalar_t__ Bottom; } ;
struct TYPE_5__ {int /*<<< orphan*/  X; } ;
struct TYPE_7__ {TYPE_2__ srWindow; TYPE_1__ dwSize; } ;
typedef  TYPE_3__ CONSOLE_SCREEN_BUFFER_INFO ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FILE_SHARE_WRITE ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 scalar_t__ FUNC1 (scalar_t__,TYPE_3__*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WT_EXECUTELONGFUNCTION ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ uv__tty_console_handle ; 
 scalar_t__ uv__tty_console_height ; 
 int /*<<< orphan*/  uv__tty_console_resize_message_loop_thread ; 
 int /*<<< orphan*/  uv__tty_console_resize_mutex ; 
 int /*<<< orphan*/  uv__tty_console_width ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  uv_tty_output_lock ; 

void FUNC6(void) {
  if (FUNC5(&uv_tty_output_lock, 1))
    FUNC3();
  uv__tty_console_handle = FUNC0(L"CONOUT$",
                                       GENERIC_READ | GENERIC_WRITE,
                                       FILE_SHARE_WRITE,
                                       0,
                                       OPEN_EXISTING,
                                       0,
                                       0);
  if (uv__tty_console_handle != INVALID_HANDLE_VALUE) {
    CONSOLE_SCREEN_BUFFER_INFO sb_info;
    FUNC2(uv__tty_console_resize_message_loop_thread,
                      NULL,
                      WT_EXECUTELONGFUNCTION);
    FUNC4(&uv__tty_console_resize_mutex);
    if (FUNC1(uv__tty_console_handle, &sb_info)) {
      uv__tty_console_width = sb_info.dwSize.X;
      uv__tty_console_height = sb_info.srWindow.Bottom - sb_info.srWindow.Top + 1;
    }
  }
}