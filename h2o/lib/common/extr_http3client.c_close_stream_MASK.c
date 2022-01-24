#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct st_h2o_http3client_req_t {TYPE_1__* quic; } ;
struct TYPE_3__ {int /*<<< orphan*/  recvstate; int /*<<< orphan*/  sendstate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct st_h2o_http3client_req_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct st_h2o_http3client_req_t *req, int err)
{
    /* TODO are we expected to send two error codes? */
    if (!FUNC4(&req->quic->sendstate))
        FUNC3(req->quic, err);
    if (!FUNC1(&req->quic->recvstate))
        FUNC2(req->quic, err);
    FUNC0(req);
}