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
struct TYPE_3__ {int /*<<< orphan*/  _timeout; } ;
struct TYPE_4__ {int /*<<< orphan*/  noncontiguous; int /*<<< orphan*/  partial_frame; int /*<<< orphan*/  body; } ;
struct st_h2o_http3client_req_t {int /*<<< orphan*/  link; TYPE_1__ super; TYPE_2__ recvbuf; int /*<<< orphan*/  sendbuf; int /*<<< orphan*/ * quic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct st_h2o_http3client_req_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct st_h2o_http3client_req_t *req)
{
    FUNC0(req->quic == NULL);
    FUNC2(&req->sendbuf);
    FUNC2(&req->recvbuf.body);
    FUNC2(&req->recvbuf.partial_frame);
    FUNC2(&req->recvbuf.noncontiguous);
    if (FUNC5(&req->super._timeout))
        FUNC6(&req->super._timeout);
    if (FUNC3(&req->link))
        FUNC4(&req->link);
    FUNC1(req);
}