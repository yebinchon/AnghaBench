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
typedef  int /*<<< orphan*/  h2o_memcached_req_t ;
typedef  int /*<<< orphan*/  h2o_memcached_context_t ;
typedef  int /*<<< orphan*/  h2o_iovec_t ;

/* Variables and functions */
 int H2O_MEMCACHED_ENCODE_KEY ; 
 int /*<<< orphan*/  REQ_TYPE_DELETE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC2(h2o_memcached_context_t *ctx, h2o_iovec_t key, int flags)
{
    h2o_memcached_req_t *req = FUNC0(ctx, REQ_TYPE_DELETE, key, (flags & H2O_MEMCACHED_ENCODE_KEY) != 0);
    FUNC1(ctx, req);
}