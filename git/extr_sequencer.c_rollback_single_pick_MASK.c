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
struct repository {int dummy; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct repository*) ; 
 int /*<<< orphan*/  FUNC4 (struct repository*) ; 
 scalar_t__ FUNC5 (struct object_id*) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ ,struct object_id*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct object_id*) ; 

__attribute__((used)) static int FUNC8(struct repository *r)
{
	struct object_id head_oid;

	if (!FUNC2(FUNC3(r)) &&
	    !FUNC2(FUNC4(r)))
		return FUNC1(FUNC0("no cherry-pick or revert in progress"));
	if (FUNC6("HEAD", 0, &head_oid, NULL))
		return FUNC1(FUNC0("cannot resolve HEAD"));
	if (FUNC5(&head_oid))
		return FUNC1(FUNC0("cannot abort from a branch yet to be born"));
	return FUNC7(&head_oid);
}