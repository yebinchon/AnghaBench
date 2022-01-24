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
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct RProc* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value
FUNC6(mrb_state *mrb, mrb_value self)
{
  mrb_value proc = FUNC2(mrb, self, FUNC1(mrb, "proc"));
  struct RProc *rproc;
  struct RClass *orig;
  mrb_value ret;

  if (FUNC3(proc))
    return FUNC4();

  rproc = FUNC5(proc);
  orig = rproc->c;
  rproc->c = mrb->proc_class;
  ret = FUNC0(mrb, proc, "source_location", 0);
  rproc->c = orig;
  return ret;
}