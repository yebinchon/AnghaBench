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
struct git_refdb {TYPE_1__* backend; } ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_2__ {int (* del ) (TYPE_1__*,char const*,int /*<<< orphan*/  const*,char const*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,char const*,int /*<<< orphan*/  const*,char const*) ; 

int FUNC2(struct git_refdb *db, const char *ref_name, const git_oid *old_id, const char *old_target)
{
	FUNC0(db && db->backend);
	return db->backend->del(db->backend, ref_name, old_id, old_target);
}