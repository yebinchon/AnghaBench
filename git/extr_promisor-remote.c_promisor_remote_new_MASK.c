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
 int /*<<< orphan*/  FUNC0 (struct promisor_remote*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  name ; 
 struct promisor_remote** promisors_tail ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static struct promisor_remote *FUNC3(const char *remote_name)
{
	struct promisor_remote *r;

	if (*remote_name == '/') {
		FUNC2(FUNC1("promisor remote name cannot begin with '/': %s"),
			remote_name);
		return NULL;
	}

	FUNC0(r, name, remote_name);

	*promisors_tail = r;
	promisors_tail = &r->next;

	return r;
}