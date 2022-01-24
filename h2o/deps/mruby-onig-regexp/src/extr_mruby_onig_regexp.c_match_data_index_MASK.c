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
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int mrb_int ;

/* Variables and functions */
#define  MRB_TT_FIXNUM 130 
#define  MRB_TT_STRING 129 
#define  MRB_TT_SYMBOL 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value
FUNC7(mrb_state* mrb, mrb_value self) {
  mrb_value src;
  mrb_int argc; mrb_value *argv;

  FUNC4(mrb, "*", &argv, &argc);

  src = FUNC1(mrb, self);

  if (argc == 1) {
    switch (FUNC6(argv[0])) {
    case MRB_TT_FIXNUM:
    case MRB_TT_SYMBOL:
    case MRB_TT_STRING:
      return FUNC2(src, FUNC0(mrb, self, argv[0]));
    default: break;
    }
  }

  return FUNC3(mrb, src, FUNC5(mrb, "[]"), argc, argv);
}