#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_15__ {int /*<<< orphan*/  base; int /*<<< orphan*/  len; } ;
struct TYPE_11__ {int /*<<< orphan*/  expiration; TYPE_7__ value; } ;
struct TYPE_12__ {TYPE_1__ set; } ;
struct TYPE_13__ {TYPE_2__ data; } ;
typedef  TYPE_3__ h2o_memcached_req_t ;
typedef  int /*<<< orphan*/  h2o_memcached_context_t ;
struct TYPE_14__ {int len; int /*<<< orphan*/  base; } ;
typedef  TYPE_4__ h2o_iovec_t ;

/* Variables and functions */
 int H2O_MEMCACHED_ENCODE_KEY ; 
 int H2O_MEMCACHED_ENCODE_VALUE ; 
 int /*<<< orphan*/  REQ_TYPE_SET ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 TYPE_7__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC6(h2o_memcached_context_t *ctx, h2o_iovec_t key, h2o_iovec_t value, uint32_t expiration, int flags)
{
    h2o_memcached_req_t *req = FUNC0(ctx, REQ_TYPE_SET, key, (flags & H2O_MEMCACHED_ENCODE_KEY) != 0);
    if ((flags & H2O_MEMCACHED_ENCODE_VALUE) != 0) {
        req->data.set.value.base = FUNC4((value.len + 2) / 3 * 4 + 1);
        req->data.set.value.len = FUNC2(req->data.set.value.base, value.base, value.len, 1);
    } else {
        req->data.set.value = FUNC3(FUNC4(value.len), value.len);
        FUNC5(req->data.set.value.base, value.base, value.len);
    }
    req->data.set.expiration = expiration;
    FUNC1(ctx, req);
}