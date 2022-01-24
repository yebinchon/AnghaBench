#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct repository {int dummy; } ;
struct TYPE_5__ {int recursive; } ;
struct TYPE_6__ {TYPE_1__ flags; scalar_t__ detect_rename; } ;
struct patch_ids {TYPE_2__ diffopts; int /*<<< orphan*/  patches; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct patch_ids*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  patch_id_neq ; 
 int /*<<< orphan*/  FUNC3 (struct repository*,TYPE_2__*) ; 

int FUNC4(struct repository *r, struct patch_ids *ids)
{
	FUNC2(ids, 0, sizeof(*ids));
	FUNC3(r, &ids->diffopts);
	ids->diffopts.detect_rename = 0;
	ids->diffopts.flags.recursive = 1;
	FUNC0(&ids->diffopts);
	FUNC1(&ids->patches, patch_id_neq, &ids->diffopts, 256);
	return 0;
}