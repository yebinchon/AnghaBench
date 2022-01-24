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
struct ref {scalar_t__ match_status; int /*<<< orphan*/  old_oid; int /*<<< orphan*/  name; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 scalar_t__ REF_NOT_MATCHED ; 
 scalar_t__ FUNC0 (struct object_id*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct object_id*,char const**) ; 

__attribute__((used)) static int FUNC2(const struct ref *ref)
{
	struct object_id oid;
	const char *p;
	return	ref->match_status == REF_NOT_MATCHED &&
		!FUNC1(ref->name, &oid, &p) &&
		*p == '\0' &&
		FUNC0(&oid, &ref->old_oid);
}