#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  inflight; } ;
struct TYPE_11__ {int /*<<< orphan*/  final_sent; int /*<<< orphan*/  body_obj; } ;
struct st_h2o_mruby_callback_sender_t {TYPE_7__ sending; TYPE_3__ super; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
struct TYPE_10__ {int /*<<< orphan*/  generator; } ;
struct TYPE_12__ {TYPE_6__* ctx; TYPE_2__ refs; scalar_t__ sender; } ;
typedef  TYPE_4__ h2o_mruby_generator_t ;
struct TYPE_13__ {TYPE_1__* shared; } ;
struct TYPE_9__ {int /*<<< orphan*/  constants; int /*<<< orphan*/ * mrb; } ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_MRUBY_SENDER_PROC_EACH_TO_FIBER ; 
 int /*<<< orphan*/  H2O_SEND_STATE_IN_PROGRESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(h2o_mruby_generator_t *generator)
{
    struct st_h2o_mruby_callback_sender_t *sender = (void *)generator->sender;
    mrb_state *mrb = generator->ctx->shared->mrb;
    mrb_value proc = FUNC3(generator->ctx->shared->constants, H2O_MRUBY_SENDER_PROC_EACH_TO_FIBER);
    mrb_value input = FUNC4(mrb, 2);
    FUNC5(mrb, input, 0, sender->super.body_obj);
    FUNC5(mrb, input, 1, generator->refs.generator);
    FUNC1(generator->ctx, proc, input, 0);

    if (!sender->super.final_sent && !sender->sending.inflight) {
        FUNC0(&sender->sending);
        FUNC2(generator, NULL, 0, H2O_SEND_STATE_IN_PROGRESS);
    }
}