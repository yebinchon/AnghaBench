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
struct mrb_io {int fd2; int fd; int /*<<< orphan*/  writable; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int /*<<< orphan*/  fsize_t ;

/* Variables and functions */
 int /*<<< orphan*/  E_IO_ERROR ; 
 scalar_t__ MRB_TT_STRING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct mrb_io* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

mrb_value
FUNC10(mrb_state *mrb, mrb_value io)
{
  struct mrb_io *fptr;
  mrb_value str, buf;
  int fd, length;

  fptr = FUNC2(mrb, io);
  if (! fptr->writable) {
    FUNC6(mrb, E_IO_ERROR, "not opened for writing");
  }

  FUNC5(mrb, "S", &str);
  if (FUNC8(str) != MRB_TT_STRING) {
    buf = FUNC4(mrb, str, "to_s", 0);
  } else {
    buf = str;
  }

  if (fptr->fd2 == -1) {
    fd = fptr->fd;
  } else {
    fd = fptr->fd2;
  }
  length = FUNC9(fd, FUNC1(buf), (fsize_t)FUNC0(buf));
  if (length == -1) {
    FUNC7(mrb, 0);
  }

  return FUNC3(length);
}