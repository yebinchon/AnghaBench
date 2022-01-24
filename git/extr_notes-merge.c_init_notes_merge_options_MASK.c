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
struct notes_merge_options {struct repository* repo; int /*<<< orphan*/  verbosity; int /*<<< orphan*/  commit_msg; } ;

/* Variables and functions */
 int /*<<< orphan*/  NOTES_MERGE_VERBOSITY_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (struct notes_merge_options*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC2(struct repository *r,
			      struct notes_merge_options *o)
{
	FUNC0(o, 0, sizeof(struct notes_merge_options));
	FUNC1(&(o->commit_msg), 0);
	o->verbosity = NOTES_MERGE_VERBOSITY_DEFAULT;
	o->repo = r;
}