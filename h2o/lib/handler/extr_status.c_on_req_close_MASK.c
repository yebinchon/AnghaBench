#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * req; } ;
struct st_h2o_status_collector_t {TYPE_1__ src; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct st_h2o_status_collector_t*) ; 

__attribute__((used)) static void FUNC1(void *p)
{
    struct st_h2o_status_collector_t *collector = *(void **)p;
    collector->src.req = NULL;
    FUNC0(collector);
}