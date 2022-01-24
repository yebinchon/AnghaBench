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
struct mrb_dir {int /*<<< orphan*/  dir; } ;
struct dirent {int /*<<< orphan*/  d_name; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  E_IO_ERROR ; 
 int /*<<< orphan*/  mrb_dir_type ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct dirent* FUNC4 (int /*<<< orphan*/ ) ; 

mrb_value
FUNC5(mrb_state *mrb, mrb_value self)
{
  struct mrb_dir *mdir;
  struct dirent *dp;

  mdir = (struct mrb_dir *)FUNC0(mrb, self, &mrb_dir_type);
  if (!mdir) return FUNC1();
  if (!mdir->dir) {
    FUNC2(mrb, E_IO_ERROR, "closed directory");
  }
  dp = FUNC4(mdir->dir);
  if (dp != NULL) {
    return FUNC3(mrb, dp->d_name);
  } else {
    return FUNC1();
  }
}