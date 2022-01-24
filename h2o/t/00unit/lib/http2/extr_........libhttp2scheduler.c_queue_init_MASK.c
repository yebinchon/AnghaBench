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
struct TYPE_3__ {int /*<<< orphan*/  anchor257; int /*<<< orphan*/ * anchors; scalar_t__ offset; scalar_t__ bits; } ;
typedef  TYPE_1__ h2o_http2_scheduler_queue_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(h2o_http2_scheduler_queue_t *queue)
{
    size_t i;
    queue->bits = 0;
    queue->offset = 0;
    for (i = 0; i != sizeof(queue->anchors) / sizeof(queue->anchors[0]); ++i)
        FUNC0(queue->anchors + i);
    FUNC0(&queue->anchor257);
}