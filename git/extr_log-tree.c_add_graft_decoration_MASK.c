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
struct commit_graft {int /*<<< orphan*/  oid; } ;
struct commit {int /*<<< orphan*/  object; } ;

/* Variables and functions */
 int /*<<< orphan*/  DECORATION_GRAFTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 struct commit* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static int FUNC2(const struct commit_graft *graft, void *cb_data)
{
	struct commit *commit = FUNC1(the_repository, &graft->oid);
	if (!commit)
		return 0;
	FUNC0(DECORATION_GRAFTED, "grafted", &commit->object);
	return 0;
}