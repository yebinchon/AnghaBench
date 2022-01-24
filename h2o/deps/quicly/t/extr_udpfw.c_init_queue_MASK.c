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
struct TYPE_2__ {int depth; int /*<<< orphan*/ * elements; scalar_t__ tail; scalar_t__ head; } ;
struct queue_t {TYPE_1__ ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct queue_t *q)
{
    FUNC0(q->ring.depth != 0);
    q->ring.head = 0;
    q->ring.tail = 0;
    q->ring.elements = FUNC1(sizeof(q->ring.elements[0]) * q->ring.depth);
    FUNC0(q->ring.elements != NULL);
}