#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  handle; } ;
typedef  TYPE_1__ uv_tty_t ;
typedef  int /*<<< orphan*/  CONSOLE_SCREEN_BUFFER_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uv_tty_output_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int uv_tty_virtual_height ; 
 int uv_tty_virtual_width ; 

int FUNC6(uv_tty_t* tty, int* width, int* height) {
  CONSOLE_SCREEN_BUFFER_INFO info;

  if (!FUNC0(tty->handle, &info)) {
    return FUNC4(FUNC1());
  }

  FUNC3(&uv_tty_output_lock);
  FUNC5(&info);
  FUNC2(&uv_tty_output_lock);

  *width = uv_tty_virtual_width;
  *height = uv_tty_virtual_height;

  return 0;
}