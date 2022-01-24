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
struct promisor_remote {struct promisor_remote* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct promisor_remote*) ; 
 struct promisor_remote* promisors ; 
 struct promisor_remote** promisors_tail ; 

__attribute__((used)) static void FUNC1(void)
{
	while (promisors) {
		struct promisor_remote *r = promisors;
		promisors = promisors->next;
		FUNC0(r);
	}

	promisors_tail = &promisors;
}