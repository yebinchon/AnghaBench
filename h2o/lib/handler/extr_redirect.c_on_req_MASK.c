#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  h2o_req_t ;
struct TYPE_7__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
struct TYPE_8__ {int /*<<< orphan*/  status; scalar_t__ internal; TYPE_1__ prefix; } ;
typedef  TYPE_2__ h2o_redirect_handler_t ;
struct TYPE_9__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
typedef  TYPE_3__ h2o_iovec_t ;
typedef  int /*<<< orphan*/  h2o_handler_t ;

/* Variables and functions */
 TYPE_3__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_3__) ; 

__attribute__((used)) static int FUNC3(h2o_handler_t *_self, h2o_req_t *req)
{
    h2o_redirect_handler_t *self = (void *)_self;
    h2o_iovec_t dest = FUNC0(req, self->prefix.base, self->prefix.len, 1);

    /* redirect */
    if (self->internal) {
        FUNC2(self, req, dest);
    } else {
        FUNC1(req, self->status, "Redirected", dest.base, dest.len);
    }

    return 0;
}