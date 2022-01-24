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
typedef  int /*<<< orphan*/  block ;

/* Variables and functions */
 int /*<<< orphan*/  BACKTRACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GENLABEL ; 
 int /*<<< orphan*/  LOADV ; 
 int /*<<< orphan*/  POP ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

block FUNC9(const char *label, block exp) {
  block cond = FUNC1("_equal",
                        FUNC0(FUNC3(FUNC4()),
                              FUNC3(FUNC6(LOADV, label))));
  return FUNC8(FUNC5(GENLABEL), label,
                             FUNC0(FUNC5(POP),
                                   // try exp catch if . == $label
                                   //               then empty
                                   //               else error end
                                   //
                                   // Can't use gen_binop(), as that's firmly
                                   // stuck in parser.y as it refers to things
                                   // like EQ.
                                   FUNC7(exp,
                                           FUNC2(cond,
                                                    FUNC5(BACKTRACK),
                                                    FUNC1("error", FUNC4())))));
}