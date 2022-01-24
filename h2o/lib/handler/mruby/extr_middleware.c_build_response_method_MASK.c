#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  input_stream; } ;
struct st_mruby_subreq_t {TYPE_1__ refs; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  E_ARGUMENT_ERROR ; 
 int /*<<< orphan*/  app_request_type ; 
 int /*<<< orphan*/  FUNC0 (struct st_mruby_subreq_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct st_mruby_subreq_t* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static mrb_value FUNC4(mrb_state *mrb, mrb_value self)
{
    struct st_mruby_subreq_t *subreq = FUNC2(mrb, self, &app_request_type);
    if (subreq == NULL)
        FUNC3(mrb, E_ARGUMENT_ERROR, "AppRequest#build_response wrong self");

    mrb_value resp = FUNC0(subreq);
    subreq->refs.input_stream = FUNC1(resp, 2);
    return resp;
}