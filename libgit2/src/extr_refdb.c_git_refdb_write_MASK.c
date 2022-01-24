#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_signature ;
struct TYPE_8__ {TYPE_2__* db; } ;
typedef  TYPE_1__ git_reference ;
struct TYPE_9__ {TYPE_3__* backend; } ;
typedef  TYPE_2__ git_refdb ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_10__ {int (* write ) (TYPE_3__*,TYPE_1__*,int,int /*<<< orphan*/  const*,char const*,int /*<<< orphan*/  const*,char const*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_3__*,TYPE_1__*,int,int /*<<< orphan*/  const*,char const*,int /*<<< orphan*/  const*,char const*) ; 

int FUNC3(git_refdb *db, git_reference *ref, int force, const git_signature *who, const char *message, const git_oid *old_id, const char *old_target)
{
	FUNC1(db && db->backend);

	FUNC0(db);
	ref->db = db;

	return db->backend->write(db->backend, ref, force, who, message, old_id, old_target);
}