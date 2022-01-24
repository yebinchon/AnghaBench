#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/ * exc; } ;
typedef  TYPE_1__ mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_ROOT ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char const*) ; 

void FUNC14(mrb_state *mrb)
{
    const char *root = FUNC2("H2O_ROOT");
    if (root == NULL)
        root = FUNC0(H2O_ROOT);
    FUNC8(mrb, FUNC10(mrb, "$H2O_ROOT"), FUNC6(mrb, root, FUNC13(root)));

    FUNC5(mrb, "$LOAD_PATH << \"#{$H2O_ROOT}/share/h2o/mruby\"");
    FUNC4(mrb);

    /* require core modules and include built-in libraries */
    FUNC5(mrb, "require \"#{$H2O_ROOT}/share/h2o/mruby/preloads.rb\"");
    if (mrb->exc != NULL) {
        const char *msg = "";
        if (FUNC11(mrb, FUNC12(mrb->exc), FUNC7(mrb, "LoadError"))) {
            msg = "Did you forget to run `make install`?\n";
        }
        FUNC3("an error occurred while loading %s/%s: %s\n%s", root, "share/h2o/mruby/preloads.rb",
                  FUNC1(FUNC9(mrb, FUNC12(mrb->exc))), msg);
    }
}