#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ type; scalar_t__ filled; scalar_t__ tagged; TYPE_1__* delta; struct TYPE_14__* delta_sibling; int /*<<< orphan*/ * delta_child; } ;
typedef  TYPE_2__ git_pobject ;
struct TYPE_15__ {size_t nr_objects; TYPE_2__* object_list; int /*<<< orphan*/  repo; } ;
typedef  TYPE_3__ git_packbuilder ;
struct TYPE_13__ {TYPE_2__* delta_child; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 scalar_t__ GIT_OBJECT_COMMIT ; 
 scalar_t__ GIT_OBJECT_TAG ; 
 scalar_t__ GIT_OBJECT_TREE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__**,size_t*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__**,size_t*,TYPE_2__*) ; 
 int /*<<< orphan*/  cb_tag_foreach ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**) ; 
 TYPE_2__** FUNC3 (size_t,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*) ; 

__attribute__((used)) static git_pobject **FUNC6(git_packbuilder *pb)
{
	size_t i, wo_end, last_untagged;
	git_pobject **wo;

	if ((wo = FUNC3(pb->nr_objects, sizeof(*wo))) == NULL)
		return NULL;

	for (i = 0; i < pb->nr_objects; i++) {
		git_pobject *po = pb->object_list + i;
		po->tagged = 0;
		po->filled = 0;
		po->delta_child = NULL;
		po->delta_sibling = NULL;
	}

	/*
	 * Fully connect delta_child/delta_sibling network.
	 * Make sure delta_sibling is sorted in the original
	 * recency order.
	 */
	for (i = pb->nr_objects; i > 0;) {
		git_pobject *po = &pb->object_list[--i];
		if (!po->delta)
			continue;
		/* Mark me as the first child */
		po->delta_sibling = po->delta->delta_child;
		po->delta->delta_child = po;
	}

	/*
	 * Mark objects that are at the tip of tags.
	 */
	if (FUNC5(pb->repo, &cb_tag_foreach, pb) < 0) {
		FUNC2(wo);
		return NULL;
	}

	/*
	 * Give the objects in the original recency order until
	 * we see a tagged tip.
	 */
	for (i = wo_end = 0; i < pb->nr_objects; i++) {
		git_pobject *po = pb->object_list + i;
		if (po->tagged)
			break;
		FUNC1(wo, &wo_end, po);
	}
	last_untagged = i;

	/*
	 * Then fill all the tagged tips.
	 */
	for (; i < pb->nr_objects; i++) {
		git_pobject *po = pb->object_list + i;
		if (po->tagged)
			FUNC1(wo, &wo_end, po);
	}

	/*
	 * And then all remaining commits and tags.
	 */
	for (i = last_untagged; i < pb->nr_objects; i++) {
		git_pobject *po = pb->object_list + i;
		if (po->type != GIT_OBJECT_COMMIT &&
		    po->type != GIT_OBJECT_TAG)
			continue;
		FUNC1(wo, &wo_end, po);
	}

	/*
	 * And then all the trees.
	 */
	for (i = last_untagged; i < pb->nr_objects; i++) {
		git_pobject *po = pb->object_list + i;
		if (po->type != GIT_OBJECT_TREE)
			continue;
		FUNC1(wo, &wo_end, po);
	}

	/*
	 * Finally all the rest in really tight order
	 */
	for (i = last_untagged; i < pb->nr_objects; i++) {
		git_pobject *po = pb->object_list + i;
		if (!po->filled)
			FUNC0(wo, &wo_end, po);
	}

	if (wo_end != pb->nr_objects) {
		FUNC2(wo);
		FUNC4(GIT_ERROR_INVALID, "invalid write order");
		return NULL;
	}

	return wo;
}