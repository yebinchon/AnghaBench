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
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_sym ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  scalar_t__ mrb_int ;

/* Variables and functions */
 int /*<<< orphan*/  E_ARGUMENT_ERROR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value
FUNC13(mrb_state *mrb, mrb_value klass)
{
  mrb_value name, rest;
  mrb_value *pargv;
  mrb_int argcnt;
  mrb_int i;
  mrb_value b, st;
  mrb_sym id;
  mrb_value *argv;
  mrb_int argc;

  name = FUNC7();
  FUNC5(mrb, "*&", &argv, &argc, &b);
  if (argc == 0) { /* special case to avoid crash */
    FUNC9(mrb, E_ARGUMENT_ERROR, "wrong number of arguments");
  }
  else {
    pargv = argv;
    argcnt = argc;
    if (argc > 0) {
      name = argv[0];
      if (FUNC10(name)) {
        /* 1stArgument:symbol -> name=nil rest=argv[0..n] */
        name = FUNC7();
      }
      else {
        pargv++;
        argcnt--;
      }
    }
    rest = FUNC2(mrb, argcnt, pargv);
    for (i=0; i<argcnt; i++) {
      id = FUNC8(mrb, FUNC0(rest)[i]);
      FUNC3(mrb, rest, i, FUNC11(id));
    }
    st = FUNC1(mrb, name, rest, FUNC4(klass));
    if (!FUNC6(b)) {
      FUNC12(mrb, b, 1, &st, st, FUNC4(st));
    }

    return st;
  }
  /* not reached */
  return FUNC7();
}