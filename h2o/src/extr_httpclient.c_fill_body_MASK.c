#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ len; } ;
typedef  TYPE_1__ h2o_iovec_t ;
struct TYPE_8__ {int /*<<< orphan*/  len; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ cur_req_body_size ; 
 TYPE_1__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__ iov_filler ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_3__*,int) ; 

int FUNC3(h2o_iovec_t *reqbuf)
{
    if (cur_req_body_size > 0) {
        FUNC2(reqbuf, &iov_filler, sizeof(*reqbuf));
        reqbuf->len = FUNC0(iov_filler.len, cur_req_body_size);
        cur_req_body_size -= reqbuf->len;
        return 0;
    } else {
        *reqbuf = FUNC1(NULL, 0);
        return 1;
    }
}