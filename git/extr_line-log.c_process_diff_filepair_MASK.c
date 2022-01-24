#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  repo; } ;
struct rev_info {TYPE_1__ diffopt; } ;
struct range_set {int dummy; } ;
struct TYPE_13__ {scalar_t__ nr; } ;
struct line_log_data {TYPE_4__ ranges; scalar_t__ path; struct line_log_data* next; } ;
struct TYPE_11__ {scalar_t__ nr; } ;
struct diff_ranges {TYPE_2__ parent; } ;
struct diff_filepair {TYPE_7__* one; TYPE_7__* two; } ;
struct TYPE_12__ {char* ptr; scalar_t__ size; } ;
typedef  TYPE_3__ mmfile_t ;
struct TYPE_14__ {char* data; scalar_t__ path; scalar_t__ size; scalar_t__ oid_valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (TYPE_3__*,TYPE_3__*,struct diff_ranges*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct diff_ranges*) ; 
 int /*<<< orphan*/  FUNC5 (struct diff_ranges*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct range_set*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct range_set*,TYPE_4__*,struct diff_ranges*,struct diff_ranges**) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,struct range_set*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 

__attribute__((used)) static int FUNC13(struct rev_info *rev,
				 struct diff_filepair *pair,
				 struct line_log_data *range,
				 struct diff_ranges **diff_out)
{
	struct line_log_data *rg = range;
	struct range_set tmp;
	struct diff_ranges diff;
	mmfile_t file_parent, file_target;

	FUNC0(pair->two->path);
	while (rg) {
		FUNC0(rg->path);
		if (!FUNC11(rg->path, pair->two->path))
			break;
		rg = rg->next;
	}

	if (!rg)
		return 0;
	if (rg->ranges.nr == 0)
		return 0;

	FUNC0(pair->two->oid_valid);
	FUNC3(rev->diffopt.repo, pair->two, 0);
	file_target.ptr = pair->two->data;
	file_target.size = pair->two->size;

	if (pair->one->oid_valid) {
		FUNC3(rev->diffopt.repo, pair->one, 0);
		file_parent.ptr = pair->one->data;
		file_parent.size = pair->one->size;
	} else {
		file_parent.ptr = "";
		file_parent.size = 0;
	}

	FUNC4(&diff);
	if (FUNC1(&file_parent, &file_target, &diff))
		FUNC2("unable to generate diff for %s", pair->one->path);

	/* NEEDSWORK should apply some heuristics to prevent mismatches */
	FUNC6(rg->path);
	rg->path = FUNC12(pair->one->path);

	FUNC7(&tmp, 0);
	FUNC8(&tmp, &rg->ranges, &diff, diff_out);
	FUNC10(&rg->ranges);
	FUNC9(&rg->ranges, &tmp);

	FUNC5(&diff);

	return ((*diff_out)->parent.nr > 0);
}