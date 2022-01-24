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
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  scalar_t__ mrb_int ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
#define  EMFILE 129 
#define  ENFILE 128 
 int FALSE ; 
 scalar_t__ O_CLOEXEC ; 
 scalar_t__ O_NOINHERIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int TRUE ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (char*,int,int /*<<< orphan*/ ) ; 

int
FUNC11(mrb_state *mrb, const char *pathname, mrb_int flags, mrb_int mode)
{
  mrb_value emsg;
  int fd, retry = FALSE;
  char* fname = FUNC5(pathname, -1);

#ifdef O_CLOEXEC
  /* O_CLOEXEC is available since Linux 2.6.23.  Linux 2.6.18 silently ignore it. */
  flags |= O_CLOEXEC;
#elif defined O_NOINHERIT
  flags |= O_NOINHERIT;
#endif
reopen:
  fd = FUNC10(fname, (int)flags, (fmode_t)mode);
  if (fd == -1) {
    if (!retry) {
      switch (errno) {
        case ENFILE:
        case EMFILE:
        FUNC3(mrb);
        retry = TRUE;
        goto reopen;
      }
    }

    emsg = FUNC2(mrb, "open %S", FUNC7(mrb, pathname));
    FUNC6(mrb, FUNC8(emsg));
    FUNC9(mrb, FUNC0(emsg));
  }
  FUNC4(fname);

  if (fd <= 2) {
    FUNC1(mrb, fd);
  }
  return fd;
}