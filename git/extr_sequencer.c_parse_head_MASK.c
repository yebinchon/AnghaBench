#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  oid; } ;
struct commit {TYPE_1__ object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,struct object_id*) ; 
 struct commit* FUNC3 (struct repository*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC4 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC5 (struct object_id*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct commit*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct repository *r, struct commit **head)
{
	struct commit *current_head;
	struct object_id oid;

	if (FUNC2("HEAD", &oid)) {
		current_head = NULL;
	} else {
		current_head = FUNC3(r, &oid);
		if (!current_head)
			return FUNC1(FUNC0("could not parse HEAD"));
		if (!FUNC5(&oid, &current_head->object.oid)) {
			FUNC7(FUNC0("HEAD %s is not a commit!"),
				FUNC4(&oid));
		}
		if (FUNC6(current_head))
			return FUNC1(FUNC0("could not parse HEAD commit"));
	}
	*head = current_head;

	return 0;
}