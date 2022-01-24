#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* prefilters; int /*<<< orphan*/  pool; } ;
typedef  TYPE_1__ h2o_req_t ;
struct TYPE_7__ {struct TYPE_7__* next; } ;
typedef  TYPE_2__ h2o_req_prefilter_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,size_t,size_t) ; 

h2o_req_prefilter_t *FUNC1(h2o_req_t *req, size_t alignment, size_t sz)
{
    h2o_req_prefilter_t *prefilter = FUNC0(&req->pool, alignment, sz);
    prefilter->next = req->prefilters;
    req->prefilters = prefilter;
    return prefilter;
}