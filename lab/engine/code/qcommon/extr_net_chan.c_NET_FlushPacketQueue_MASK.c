#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int release; struct TYPE_5__* data; struct TYPE_5__* next; int /*<<< orphan*/  to; int /*<<< orphan*/  length; } ;
typedef  TYPE_1__ packetQueue_t ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* packetQueue ; 

void FUNC3(void)
{
	packetQueue_t *last;
	int now;

	while(packetQueue) {
		now = FUNC0();
		if(packetQueue->release >= now)
			break;
		FUNC1(packetQueue->length, packetQueue->data,
			packetQueue->to);
		last = packetQueue;
		packetQueue = packetQueue->next;
		FUNC2(last->data);
		FUNC2(last);
	}
}