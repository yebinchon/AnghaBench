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
struct TYPE_4__ {size_t capacity; int /*<<< orphan*/  lru; int /*<<< orphan*/  hash; } ;
typedef  TYPE_1__ h2o_filecache_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  opencache_set ; 

h2o_filecache_t *FUNC3(size_t capacity)
{
    h2o_filecache_t *cache = FUNC1(sizeof(*cache));

    cache->hash = FUNC2(opencache_set);
    FUNC0(&cache->lru);
    cache->capacity = capacity;

    return cache;
}