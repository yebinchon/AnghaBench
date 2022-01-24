#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct RProc {int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_sym ;
struct TYPE_8__ {int /*<<< orphan*/  proc_class; } ;
typedef  TYPE_1__ mrb_state ;
typedef  int /*<<< orphan*/  mrb_method_t ;

/* Variables and functions */
 int /*<<< orphan*/  E_ARGUMENT_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct RProc*) ; 
 int /*<<< orphan*/  MRB_PROC_STRICT ; 
 int /*<<< orphan*/  MRB_TT_PROC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct RProc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value
FUNC12(mrb_state *mrb, mrb_value self)
{
  struct RProc *p;
  mrb_method_t m;
  mrb_sym mid;
  mrb_value blk = FUNC5();

  FUNC3(mrb, "n&", &mid, &blk);
  if (FUNC4(blk)) {
    FUNC9(mrb, E_ARGUMENT_ERROR, "no block given");
  }
  p = (struct RProc*)FUNC6(mrb, MRB_TT_PROC, mrb->proc_class);
  FUNC7(p, FUNC8(blk));
  p->flags |= MRB_PROC_STRICT;
  FUNC0(m, p);
  FUNC2(mrb, FUNC1(FUNC10(mrb, self)), mid, m);
  return FUNC11(mid);
}