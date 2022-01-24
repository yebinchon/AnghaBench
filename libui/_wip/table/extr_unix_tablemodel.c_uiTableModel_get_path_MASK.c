#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ stamp; int /*<<< orphan*/  user_data; } ;
typedef  int /*<<< orphan*/  GtkTreePath ;
typedef  int /*<<< orphan*/  GtkTreeModel ;
typedef  TYPE_1__ GtkTreeIter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ GOOD_STAMP ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static GtkTreePath *FUNC2(GtkTreeModel *mb, GtkTreeIter *iter)
{
	// note: from this point forward, the GOOD_STAMP checks ensure that the index stored in iter is nonnegative
	if (iter->stamp != GOOD_STAMP)
		return NULL;			// this is what both GtkListStore and GtkTreeStore do
	return FUNC1(FUNC0(iter->user_data), -1);
}