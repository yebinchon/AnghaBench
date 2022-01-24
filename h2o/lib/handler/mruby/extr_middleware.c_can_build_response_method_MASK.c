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
struct st_mruby_subreq_t {scalar_t__ state; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  E_ARGUMENT_ERROR ; 
 scalar_t__ INITIAL ; 
 int /*<<< orphan*/  app_request_type ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct st_mruby_subreq_t* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static mrb_value FUNC3(mrb_state *mrb, mrb_value self)
{
    struct st_mruby_subreq_t *subreq = FUNC1(mrb, self, &app_request_type);
    if (subreq == NULL)
        FUNC2(mrb, E_ARGUMENT_ERROR, "AppRequest#_can_build_response? wrong self");
    return FUNC0(subreq->state != INITIAL);
}