#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct termios {int c_iflag; int c_lflag; int* c_cc; int /*<<< orphan*/  c_cflag; int /*<<< orphan*/  c_oflag; } ;
struct TYPE_4__ {int mode; struct termios orig_termios; } ;
typedef  TYPE_1__ uv_tty_t ;
typedef  int uv_tty_mode_t ;

/* Variables and functions */
 int BRKINT ; 
 int /*<<< orphan*/  CS8 ; 
 int ECHO ; 
 int ICANON ; 
 int ICRNL ; 
 int IEXTEN ; 
 int INPCK ; 
 int ISIG ; 
 int ISTRIP ; 
 int IXON ; 
 int /*<<< orphan*/  ONLCR ; 
 int /*<<< orphan*/  TCSADRAIN ; 
#define  UV_TTY_MODE_IO 130 
#define  UV_TTY_MODE_NORMAL 129 
#define  UV_TTY_MODE_RAW 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 size_t VMIN ; 
 size_t VTIME ; 
 int /*<<< orphan*/  errno ; 
 struct termios orig_termios ; 
 int orig_termios_fd ; 
 scalar_t__ FUNC1 (int,struct termios*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,struct termios*) ; 
 int /*<<< orphan*/  termios_spinlock ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct termios*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(uv_tty_t* tty, uv_tty_mode_t mode) {
  struct termios tmp;
  int fd;

  if (tty->mode == (int) mode)
    return 0;

  fd = FUNC3(tty);
  if (tty->mode == UV_TTY_MODE_NORMAL && mode != UV_TTY_MODE_NORMAL) {
    if (FUNC1(fd, &tty->orig_termios))
      return FUNC0(errno);

    /* This is used for uv_tty_reset_mode() */
    FUNC5(&termios_spinlock);
    if (orig_termios_fd == -1) {
      orig_termios = tty->orig_termios;
      orig_termios_fd = fd;
    }
    FUNC6(&termios_spinlock);
  }

  tmp = tty->orig_termios;
  switch (mode) {
    case UV_TTY_MODE_NORMAL:
      break;
    case UV_TTY_MODE_RAW:
      tmp.c_iflag &= ~(BRKINT | ICRNL | INPCK | ISTRIP | IXON);
      tmp.c_oflag |= (ONLCR);
      tmp.c_cflag |= (CS8);
      tmp.c_lflag &= ~(ECHO | ICANON | IEXTEN | ISIG);
      tmp.c_cc[VMIN] = 1;
      tmp.c_cc[VTIME] = 0;
      break;
    case UV_TTY_MODE_IO:
      FUNC4(&tmp);
      break;
  }

  /* Apply changes after draining */
  if (FUNC2(fd, TCSADRAIN, &tmp))
    return FUNC0(errno);

  tty->mode = mode;
  return 0;
}