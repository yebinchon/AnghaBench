#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/ * exc; } ;
typedef  TYPE_4__ mrb_state ;
struct TYPE_15__ {int /*<<< orphan*/  body_obj; } ;
typedef  TYPE_5__ h2o_mruby_sender_t ;
struct TYPE_16__ {TYPE_2__* ctx; TYPE_5__* sender; } ;
typedef  TYPE_6__ h2o_mruby_generator_t ;
struct TYPE_11__ {int /*<<< orphan*/  sym_close; } ;
struct TYPE_13__ {TYPE_1__ symbols; TYPE_4__* mrb; } ;
struct TYPE_12__ {TYPE_3__* shared; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(h2o_mruby_generator_t *generator)
{
    h2o_mruby_sender_t *sender = generator->sender;
    mrb_state *mrb = generator->ctx->shared->mrb;

    if (!FUNC2(sender->body_obj)) {
        /* call close and throw away error */
        if (FUNC4(mrb, sender->body_obj, generator->ctx->shared->symbols.sym_close))
            FUNC0(mrb, sender->body_obj, generator->ctx->shared->symbols.sym_close, 0, NULL);
        mrb->exc = NULL;
        FUNC1(mrb, sender->body_obj);
        sender->body_obj = FUNC3();
    }
}