#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uv_tty_t ;
struct winsize {int ws_col; int ws_row; } ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  TIOCGWINSZ ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ errno ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct winsize*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(uv_tty_t* tty, int* width, int* height) {
  struct winsize ws;
  int err;

  do
    err = FUNC1(FUNC2(tty), TIOCGWINSZ, &ws);
  while (err == -1 && errno == EINTR);

  if (err == -1)
    return FUNC0(errno);

  *width = ws.ws_col;
  *height = ws.ws_row;

  return 0;
}