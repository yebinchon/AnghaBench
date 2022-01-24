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
struct oidset {int dummy; } ;
struct object {int /*<<< orphan*/  oid; } ;

/* Variables and functions */
 int FUNC0 (struct oidset*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct oidset*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(
	struct object *obj,
	struct oidset *omits,
	int include_it)
{
	if (!omits)
		return 0;

	if (include_it)
		return FUNC1(omits, &obj->oid);
	else
		return FUNC0(omits, &obj->oid);
}