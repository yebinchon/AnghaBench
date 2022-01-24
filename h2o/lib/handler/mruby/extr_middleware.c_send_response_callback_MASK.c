#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_5__* response; } ;
struct TYPE_7__ {int /*<<< orphan*/  request; } ;
struct st_mruby_subreq_t {scalar_t__ state; TYPE_2__ shortcut; TYPE_1__ refs; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_int ;
struct TYPE_11__ {TYPE_4__* ctx; } ;
typedef  TYPE_5__ h2o_mruby_generator_t ;
struct TYPE_10__ {TYPE_3__* shared; } ;
struct TYPE_9__ {int /*<<< orphan*/  mrb; } ;

/* Variables and functions */
 scalar_t__ INITIAL ; 
 int /*<<< orphan*/  app_request_type ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct st_mruby_subreq_t* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct st_mruby_subreq_t*) ; 

__attribute__((used)) static int FUNC5(h2o_mruby_generator_t *generator, mrb_int status, mrb_value resp, int *is_delegate)
{
    struct st_mruby_subreq_t *subreq = FUNC1(generator->ctx->shared->mrb, resp, &app_request_type);
    FUNC0(subreq != NULL);
    FUNC0(FUNC3(subreq->refs.request) == FUNC3(resp));

    subreq->shortcut.response = generator;
    FUNC2(generator->ctx->shared->mrb, resp); /* prevent request and subreq from being disposed */

    if (subreq->state != INITIAL) {
        /* immediately start sending response, otherwise defer it until once receive data from upstream (subreq_ostream_send) */
        FUNC4(subreq);
    }

    return 0;
}