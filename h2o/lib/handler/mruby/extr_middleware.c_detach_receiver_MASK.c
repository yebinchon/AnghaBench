#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct st_mruby_subreq_t {TYPE_2__* ctx; int /*<<< orphan*/  receiver; } ;
typedef  int /*<<< orphan*/  mrb_value ;
struct TYPE_4__ {TYPE_1__* shared; } ;
struct TYPE_3__ {int /*<<< orphan*/  mrb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static mrb_value FUNC5(struct st_mruby_subreq_t *subreq)
{
    mrb_value receiver = subreq->receiver;
    FUNC0(!FUNC3(receiver));
    subreq->receiver = FUNC4();
    FUNC2(subreq->ctx->shared->mrb, receiver);
    FUNC1(subreq->ctx->shared->mrb, receiver);
    return receiver;
}