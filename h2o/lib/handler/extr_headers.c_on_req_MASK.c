#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct st_headers_early_hints_sender_t {int /*<<< orphan*/  deferred_timeout_entry; int /*<<< orphan*/  cmds; TYPE_3__* req; } ;
struct st_headers_early_hints_handler_t {int /*<<< orphan*/  cmds; } ;
struct TYPE_7__ {TYPE_2__* conn; int /*<<< orphan*/  pool; } ;
typedef  TYPE_3__ h2o_req_t ;
typedef  int /*<<< orphan*/  h2o_handler_t ;
struct TYPE_6__ {TYPE_1__* ctx; } ;
struct TYPE_5__ {int /*<<< orphan*/  loop; } ;

/* Variables and functions */
 struct st_headers_early_hints_sender_t* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  on_sender_deferred_timeout ; 
 int /*<<< orphan*/  on_sender_dispose ; 

__attribute__((used)) static int FUNC3(h2o_handler_t *_handler, h2o_req_t *req)
{
    struct st_headers_early_hints_handler_t *handler = (void *)_handler;

    struct st_headers_early_hints_sender_t *sender = FUNC0(&req->pool, sizeof(*sender), on_sender_dispose);
    sender->req = req;
    sender->cmds = handler->cmds;
    FUNC1(&sender->deferred_timeout_entry, on_sender_deferred_timeout);
    FUNC2(req->conn->ctx->loop, 0, &sender->deferred_timeout_entry);

    return -1;
}