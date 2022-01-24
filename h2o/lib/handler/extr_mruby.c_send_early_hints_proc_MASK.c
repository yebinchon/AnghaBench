#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mrb_value ;
struct TYPE_13__ {int /*<<< orphan*/  exc; int /*<<< orphan*/  ud; } ;
typedef  TYPE_2__ mrb_state ;
struct TYPE_14__ {TYPE_8__* req; } ;
typedef  TYPE_3__ h2o_mruby_generator_t ;
struct TYPE_12__ {int status; } ;
struct TYPE_15__ {TYPE_1__ res; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*) ; 
 int /*<<< orphan*/  handle_early_hints_header ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 

mrb_value FUNC8(mrb_state *mrb, mrb_value self)
{
    mrb_value headers;
    FUNC4(mrb, "H", &headers);

    h2o_mruby_generator_t *generator = FUNC0(mrb, FUNC7(mrb, 0));
    if (generator == NULL)
        return FUNC5();

    if (FUNC1(mrb->ud, headers, handle_early_hints_header, generator->req) == -1)
        FUNC3(mrb, FUNC6(mrb->exc));
    generator->req->res.status = 103;
    FUNC2(generator->req);

    return FUNC5();
}