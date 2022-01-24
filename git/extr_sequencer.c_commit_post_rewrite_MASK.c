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
struct notes_rewrite_cfg {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  oid; } ;
struct commit {TYPE_1__ object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct notes_rewrite_cfg*,int /*<<< orphan*/ *,struct object_id const*) ; 
 int /*<<< orphan*/  FUNC1 (struct repository*,struct notes_rewrite_cfg*,char*) ; 
 struct notes_rewrite_cfg* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct object_id const*) ; 

void FUNC4(struct repository *r,
			 const struct commit *old_head,
			 const struct object_id *new_head)
{
	struct notes_rewrite_cfg *cfg;

	cfg = FUNC2("amend");
	if (cfg) {
		/* we are amending, so old_head is not NULL */
		FUNC0(cfg, &old_head->object.oid, new_head);
		FUNC1(r, cfg, "Notes added by 'git commit --amend'");
	}
	FUNC3(&old_head->object.oid, new_head);
}