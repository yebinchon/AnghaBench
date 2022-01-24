#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct RProc {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_value ;
struct TYPE_12__ {TYPE_2__* c; } ;
typedef  TYPE_3__ mrb_state ;
typedef  int mrb_int ;
struct TYPE_11__ {TYPE_1__* ci; } ;
struct TYPE_10__ {int /*<<< orphan*/  target_class; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct RProc*) ; 
 int /*<<< orphan*/  FUNC1 (struct RProc*,int /*<<< orphan*/ ) ; 
 struct RProc* FUNC2 (TYPE_3__*,char*,int,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,struct RProc*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*,char**,...) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value
FUNC11(mrb_state *mrb, mrb_value self)
{
  mrb_value b;
  mrb_int argc; mrb_value *argv;

  FUNC6(mrb, "*!&", &argv, &argc, &b);

  if (FUNC7(b)) {
    char *s;
    mrb_int len;
    char *file = NULL;
    mrb_int line = 1;
    mrb_value cv;
    struct RProc *proc;

    FUNC6(mrb, "s|zi", &s, &len, &file, &line);
    cv = FUNC10(mrb, self);
    proc = FUNC2(mrb, s, len, FUNC8(), file, line);
    FUNC1(proc, FUNC5(cv));
    FUNC4(!FUNC0(proc));
    mrb->c->ci->target_class = FUNC5(cv);
    return FUNC3(mrb, self, proc);
  }
  else {
    FUNC6(mrb, "&", &b);
    return FUNC9(mrb, self);
  }
}