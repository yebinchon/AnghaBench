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
struct mrb_dir {int /*<<< orphan*/ * dir; } ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mrb_dir*) ; 

void
FUNC2(mrb_state *mrb, void *ptr)
{
  struct mrb_dir *mdir = (struct mrb_dir *)ptr;

  if (mdir->dir) {
    FUNC0(mdir->dir);
    mdir->dir = NULL;
  }
  FUNC1(mrb, mdir);
}