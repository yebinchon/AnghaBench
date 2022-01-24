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
struct TYPE_3__ {int flags; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ h2o_cache_t ;

/* Variables and functions */
 int H2O_CACHE_FLAG_MULTITHREADED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(h2o_cache_t *cache)
{
    if ((cache->flags & H2O_CACHE_FLAG_MULTITHREADED) != 0)
        FUNC0(&cache->mutex);
}