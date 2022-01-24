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
struct ref {int dummy; } ;

/* Variables and functions */
 struct ref* FUNC0 (struct ref const*) ; 
 struct ref* FUNC1 (struct ref const*,char const*) ; 

struct ref *FUNC2(const struct ref *remote_refs, const char *name)
{
	const struct ref *ref = FUNC1(remote_refs, name);

	if (!ref)
		return NULL;

	return FUNC0(ref);
}