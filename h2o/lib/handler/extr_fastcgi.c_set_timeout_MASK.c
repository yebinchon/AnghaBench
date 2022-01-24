#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_10__ {int /*<<< orphan*/  cb; } ;
struct st_fcgi_generator_t {TYPE_4__ timeout; TYPE_3__* req; } ;
typedef  int /*<<< orphan*/  h2o_timer_cb ;
struct TYPE_9__ {TYPE_2__* conn; } ;
struct TYPE_8__ {TYPE_1__* ctx; } ;
struct TYPE_7__ {int /*<<< orphan*/  loop; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 

__attribute__((used)) static void FUNC3(struct st_fcgi_generator_t *generator, uint64_t timeout, h2o_timer_cb cb)
{
    if (FUNC0(&generator->timeout))
        FUNC2(&generator->timeout);
    generator->timeout.cb = cb;
    FUNC1(generator->req->conn->ctx->loop, timeout, &generator->timeout);
}