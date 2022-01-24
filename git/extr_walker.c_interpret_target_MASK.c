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
struct walker {int /*<<< orphan*/  (* fetch_ref ) (struct walker*,struct ref*) ;} ;
struct ref {int /*<<< orphan*/  old_oid; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 struct ref* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ref*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC4 (struct object_id*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct walker*,struct ref*) ; 

__attribute__((used)) static int FUNC6(struct walker *walker, char *target, struct object_id *oid)
{
	if (!FUNC3(target, oid))
		return 0;
	if (!FUNC1(target, 0)) {
		struct ref *ref = FUNC0(target);
		if (!walker->fetch_ref(walker, ref)) {
			FUNC4(oid, &ref->old_oid);
			FUNC2(ref);
			return 0;
		}
		FUNC2(ref);
	}
	return -1;
}