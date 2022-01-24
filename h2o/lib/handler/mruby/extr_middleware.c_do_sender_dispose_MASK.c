#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct st_h2o_mruby_middleware_sender_t {TYPE_8__* subreq; int /*<<< orphan*/  sending; } ;
struct TYPE_13__ {TYPE_2__* ctx; scalar_t__ sender; } ;
typedef  TYPE_5__ h2o_mruby_generator_t ;
struct TYPE_12__ {TYPE_5__* body; int /*<<< orphan*/ * response; } ;
struct TYPE_11__ {int /*<<< orphan*/  request; } ;
struct TYPE_14__ {TYPE_4__ shortcut; TYPE_3__ refs; } ;
struct TYPE_10__ {TYPE_1__* shared; } ;
struct TYPE_9__ {int /*<<< orphan*/  mrb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(h2o_mruby_generator_t *generator)
{
    struct st_h2o_mruby_middleware_sender_t *sender = (void *)generator->sender;

    FUNC2(&sender->sending);

    if (sender->subreq->shortcut.response != NULL) {
        FUNC0(!FUNC5(sender->subreq->refs.request));
        FUNC4(generator->ctx->shared->mrb, sender->subreq->refs.request);
        sender->subreq->shortcut.response = NULL;
    }

    FUNC0(sender->subreq->shortcut.body == generator);
    sender->subreq->shortcut.body = NULL;

    FUNC1(sender->subreq);
    sender->subreq = NULL;

    FUNC3(generator);
}