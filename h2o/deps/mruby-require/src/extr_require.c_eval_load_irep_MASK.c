#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct RProc {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  object_class; } ;
typedef  TYPE_1__ mrb_state ;
typedef  int /*<<< orphan*/  mrb_irep ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct RProc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct RProc*) ; 
 struct RProc* FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(mrb_state *mrb, mrb_irep *irep)
{
  int ai;
  struct RProc *proc;

#ifdef USE_MRUBY_OLD_BYTE_CODE
  replace_stop_with_return(mrb, irep);
#endif
  proc = FUNC5(mrb, irep);
  FUNC3(mrb, irep);
  FUNC0(proc, mrb->object_class);

  ai = FUNC2(mrb);
  FUNC7(mrb, FUNC4(proc), 0, NULL, FUNC6(mrb), mrb->object_class);
  FUNC1(mrb, ai);
}