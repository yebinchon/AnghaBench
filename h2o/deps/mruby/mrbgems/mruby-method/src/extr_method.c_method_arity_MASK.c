#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct RProc {struct RClass* c; } ;
struct RClass {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_value ;
struct TYPE_6__ {struct RClass* proc_class; } ;
typedef  TYPE_1__ mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct RProc* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value
FUNC6(mrb_state *mrb, mrb_value self)
{
  mrb_value proc = FUNC3(mrb, self, FUNC2(mrb, "proc"));
  struct RProc *rproc;
  struct RClass *orig;
  mrb_value ret;

  if (FUNC4(proc))
    return FUNC0(-1);

  rproc = FUNC5(proc);
  orig = rproc->c;
  rproc->c = mrb->proc_class;
  ret = FUNC1(mrb, proc, "arity", 0);
  rproc->c = orig;
  return ret;
}