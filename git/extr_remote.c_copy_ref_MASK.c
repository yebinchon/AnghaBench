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
struct ref {struct ref* peer_ref; void* remote_status; void* symref; int /*<<< orphan*/ * next; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ref*,struct ref const*,size_t) ; 
 size_t FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct ref* FUNC3 (size_t) ; 
 void* FUNC4 (void*) ; 

struct ref *FUNC5(const struct ref *ref)
{
	struct ref *cpy;
	size_t len;
	if (!ref)
		return NULL;
	len = FUNC1(sizeof(struct ref), FUNC2(ref->name), 1);
	cpy = FUNC3(len);
	FUNC0(cpy, ref, len);
	cpy->next = NULL;
	cpy->symref = FUNC4(ref->symref);
	cpy->remote_status = FUNC4(ref->remote_status);
	cpy->peer_ref = FUNC5(ref->peer_ref);
	return cpy;
}