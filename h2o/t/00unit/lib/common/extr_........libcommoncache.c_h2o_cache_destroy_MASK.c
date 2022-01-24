#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int flags; int /*<<< orphan*/  mutex; int /*<<< orphan*/  table; } ;
typedef  TYPE_1__ h2o_cache_t ;

/* Variables and functions */
 int H2O_CACHE_FLAG_MULTITHREADED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(h2o_cache_t *cache)
{
    FUNC1(cache);
    FUNC2(cache, cache->table);
    if ((cache->flags & H2O_CACHE_FLAG_MULTITHREADED) != 0)
        FUNC3(&cache->mutex);
    FUNC0(cache);
}