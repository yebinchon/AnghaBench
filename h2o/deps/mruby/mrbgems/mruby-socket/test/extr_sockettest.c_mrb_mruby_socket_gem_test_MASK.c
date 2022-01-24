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
struct RClass {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct RClass* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  mrb_sockettest_cygwin_p ; 
 int /*<<< orphan*/  mrb_sockettest_tmppath ; 
 int /*<<< orphan*/  mrb_sockettest_win_p ; 

void
FUNC3(mrb_state* mrb)
{
  struct RClass *c = FUNC2(mrb, "SocketTest");
  FUNC1(mrb, c, "tmppath", mrb_sockettest_tmppath, FUNC0());
  FUNC1(mrb, c, "win?", mrb_sockettest_win_p, FUNC0());
  FUNC1(mrb, c, "cygwin?", mrb_sockettest_cygwin_p, FUNC0());
}