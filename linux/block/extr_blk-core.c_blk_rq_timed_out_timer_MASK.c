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
struct timer_list {int dummy; } ;
struct request_queue {int /*<<< orphan*/  timeout_work; } ;

/* Variables and functions */
 struct request_queue* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct request_queue* q ; 
 int /*<<< orphan*/  timeout ; 

__attribute__((used)) static void FUNC2(struct timer_list *t)
{
	struct request_queue *q = FUNC0(q, t, timeout);

	FUNC1(&q->timeout_work);
}