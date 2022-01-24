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
struct kyber_queue_data {int /*<<< orphan*/  cpu_latency; int /*<<< orphan*/ * domain_tokens; int /*<<< orphan*/  timer; } ;
struct elevator_queue {struct kyber_queue_data* elevator_data; } ;

/* Variables and functions */
 int KYBER_NUM_DOMAINS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kyber_queue_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct elevator_queue *e)
{
	struct kyber_queue_data *kqd = e->elevator_data;
	int i;

	FUNC0(&kqd->timer);

	for (i = 0; i < KYBER_NUM_DOMAINS; i++)
		FUNC3(&kqd->domain_tokens[i]);
	FUNC1(kqd->cpu_latency);
	FUNC2(kqd);
}