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
typedef  int u_long ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  scalar_t__ mrb_bool ;

/* Variables and functions */
 int /*<<< orphan*/  FIONBIO ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int NO_ERROR ; 
 int O_NONBLOCK ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value
FUNC6(mrb_state *mrb, mrb_value self)
{
  int fd, flags;
  mrb_bool nonblocking;
#ifdef _WIN32
  u_long mode = 1;
#endif

  FUNC2(mrb, "b", &nonblocking);
  fd = FUNC5(mrb, self);
#ifdef _WIN32
  flags = ioctlsocket(fd, FIONBIO, &mode);
  if (flags != NO_ERROR)
    mrb_sys_fail(mrb, "ioctlsocket");
#else
  flags = FUNC0(fd, F_GETFL, 0);
  if (flags == 1)
    FUNC4(mrb, "fcntl");
  if (nonblocking)
    flags |= O_NONBLOCK;
  else
    flags &= ~O_NONBLOCK;
  if (FUNC0(fd, F_SETFL, flags) == -1)
    FUNC4(mrb, "fcntl");
#endif
  return FUNC3();
}