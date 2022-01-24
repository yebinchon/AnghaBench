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
typedef  void git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

int FUNC2(const char *ref, const git_oid *old, const git_oid *new, void *data)
{
	FUNC0(ref);
	FUNC0(old);
	FUNC0(new);
	FUNC0(data);

	FUNC1("update tips called");
	return 0;
}