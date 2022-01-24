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
struct mruby_configurator_t {int /*<<< orphan*/ * mrb; } ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_MRUBY_MODULE_NAME ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 

__attribute__((used)) static mrb_state *FUNC3(struct mruby_configurator_t *self)
{
    if (self->mrb == NULL) {
        self->mrb = FUNC2();
        if (self->mrb == NULL) {
            FUNC0("%s: no memory\n", H2O_MRUBY_MODULE_NAME);
        }
        FUNC1(self->mrb);
    }
    return self->mrb;
}