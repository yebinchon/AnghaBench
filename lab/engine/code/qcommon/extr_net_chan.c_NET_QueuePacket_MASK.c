#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int length; struct TYPE_4__* next; scalar_t__ release; int /*<<< orphan*/  to; void* data; } ;
typedef  TYPE_1__ packetQueue_t ;
typedef  int /*<<< orphan*/  netadr_t ;
struct TYPE_5__ {float value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,void const*,int) ; 
 void* FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 TYPE_3__* com_timescale ; 
 TYPE_1__* packetQueue ; 

__attribute__((used)) static void FUNC3( int length, const void *data, netadr_t to,
	int offset )
{
	packetQueue_t *new, *next = packetQueue;

	if(offset > 999)
		offset = 999;

	new = FUNC1(sizeof(packetQueue_t));
	new->data = FUNC1(length);
	FUNC0(new->data, data, length);
	new->length = length;
	new->to = to;
	new->release = FUNC2() + (int)((float)offset / com_timescale->value);	
	new->next = NULL;

	if(!packetQueue) {
		packetQueue = new;
		return;
	}
	while(next) {
		if(!next->next) {
			next->next = new;
			return;
		}
		next = next->next;
	}
}