#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct RClass {int dummy; } ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  scalar_t__ mrb_int ;
struct TYPE_2__ {struct RClass* c; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 struct RClass* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct RClass* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,struct RClass*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct RClass*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,...) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 struct RClass* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct RClass*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,long) ; 

__attribute__((used)) static mrb_value
FUNC13(mrb_state *mrb, mrb_value cls)
{
  struct RClass *cl, *sce;
  mrb_value e, msg;
  mrb_int no;
  int argc;
  char name[8];

  sce = FUNC1(mrb, "SystemCallError");
  argc = FUNC7(mrb, "i|S", &no, &msg);
  if (argc == 1) {
    e = FUNC6(mrb, FUNC11(sce), "new", 1, FUNC5(no));
  } else {
    e = FUNC6(mrb, FUNC11(sce), "new", 2, msg, FUNC5(no));
  }
  if (FUNC10(mrb, e) == sce) {
    FUNC12(name, sizeof(name), "E%03ld", (long)no);
    cl = FUNC2(mrb, FUNC8(mrb, "Errno"), name, sce);
    FUNC3(mrb, cl, "Errno", FUNC5(no));
    FUNC0(e)->c = cl;
  }
  FUNC4(mrb, e);
  return FUNC9();  /* NOTREACHED */
}