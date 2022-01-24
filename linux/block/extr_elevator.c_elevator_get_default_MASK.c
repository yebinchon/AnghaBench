#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct request_queue {int nr_hw_queues; } ;
struct elevator_type {int dummy; } ;

/* Variables and functions */
 struct elevator_type* FUNC0 (struct request_queue*,char*,int) ; 

__attribute__((used)) static struct elevator_type *FUNC1(struct request_queue *q)
{
	if (q->nr_hw_queues != 1)
		return NULL;

	return FUNC0(q, "mq-deadline", false);
}