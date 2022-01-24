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
struct stat {int dummy; } ;
struct mrb_io {scalar_t__ fd; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  E_IO_ERROR ; 
 int FUNC0 (char*,struct stat*) ; 
 int FUNC1 (scalar_t__,struct stat*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mrb_io_type ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (char*,struct stat*) ; 

__attribute__((used)) static int
FUNC12(mrb_state *mrb, mrb_value obj, struct stat *st, int do_lstat)
{
  mrb_value tmp;
  mrb_value io_klass, str_klass;

  io_klass  = FUNC7(FUNC2(mrb, "IO"));
  str_klass = FUNC7(FUNC2(mrb, "String"));

  tmp = FUNC3(mrb, obj, "is_a?", 1, io_klass);
  if (FUNC10(tmp)) {
    struct mrb_io *fptr;
    fptr = (struct mrb_io *)FUNC4(mrb, obj, &mrb_io_type);

    if (fptr && fptr->fd >= 0) {
      return FUNC1(fptr->fd, st);
    }

    FUNC8(mrb, E_IO_ERROR, "closed stream");
    return -1;
  }

  tmp = FUNC3(mrb, obj, "is_a?", 1, str_klass);
  if (FUNC10(tmp)) {
    char *path = FUNC6(FUNC9(mrb, obj), -1);
    int ret;
    if (do_lstat) {
      ret = FUNC0(path, st);
    } else {
      ret = FUNC11(path, st);
    }
    FUNC5(path);
    return ret;
  }

  return -1;
}