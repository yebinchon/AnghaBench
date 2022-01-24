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
struct mrb_io {scalar_t__ fd2; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int FUNC0 (int) ; 
 struct mrb_io* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

mrb_value
FUNC4(mrb_state *mrb, mrb_value self)
{
  struct mrb_io *fptr;
  fptr = FUNC1(mrb, self);
  if (FUNC0((int)fptr->fd2) == -1) {
    FUNC3(mrb, "close");
  }
  return FUNC2();
}