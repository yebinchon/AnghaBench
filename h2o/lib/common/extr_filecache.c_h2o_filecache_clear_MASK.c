#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ khiter_t ;
struct TYPE_4__ {int /*<<< orphan*/  hash; } ;
typedef  TYPE_1__ h2o_filecache_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__) ; 

void FUNC6(h2o_filecache_t *cache)
{
    khiter_t iter;
    for (iter = FUNC1(cache->hash); iter != FUNC2(cache->hash); ++iter) {
        if (!FUNC3(cache->hash, iter))
            continue;
        FUNC5(cache, iter);
    }
    FUNC0(FUNC4(cache->hash) == 0);
}