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
struct st_deferred_request_action_t {int dummy; } ;
typedef  int /*<<< orphan*/  h2o_req_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  on_replay_request_cb ; 

void FUNC1(h2o_req_t *req)
{
    FUNC0(req, sizeof(struct st_deferred_request_action_t), on_replay_request_cb);
}