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
typedef  int /*<<< orphan*/  uint8_t ;
struct st_h2o_http3client_req_t {int /*<<< orphan*/  sendbuf; } ;
struct TYPE_3__ {size_t len; int /*<<< orphan*/ * base; } ;
typedef  TYPE_1__ h2o_iovec_t ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_HTTP3_FRAME_TYPE_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static size_t FUNC2(struct st_h2o_http3client_req_t *req, h2o_iovec_t payload)
{
    size_t nbytes;

    { /* emit header */
        uint8_t buf[9], *p = buf;
        *p++ = H2O_HTTP3_FRAME_TYPE_DATA;
        p = FUNC1(p, payload.len);
        nbytes = p - buf;
        FUNC0(&req->sendbuf, buf, nbytes);
    }

    /* emit payload */
    FUNC0(&req->sendbuf, payload.base, payload.len);
    nbytes += payload.len;

    return nbytes;
}