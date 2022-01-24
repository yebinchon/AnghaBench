#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_signature ;
struct TYPE_8__ {TYPE_2__* db; } ;
typedef  TYPE_1__ git_reference ;
struct TYPE_9__ {TYPE_4__* backend; } ;
typedef  TYPE_2__ git_refdb ;
struct TYPE_10__ {int (* rename ) (TYPE_1__**,TYPE_4__*,char const*,char const*,int,int /*<<< orphan*/  const*,char const*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_1__**,TYPE_4__*,char const*,char const*,int,int /*<<< orphan*/  const*,char const*) ; 

int FUNC3(
	git_reference **out,
	git_refdb *db,
	const char *old_name,
	const char *new_name,
	int force,
	const git_signature *who,
	const char *message)
{
	int error;

	FUNC1(db && db->backend);
	error = db->backend->rename(out, db->backend, old_name, new_name, force, who, message);
	if (error < 0)
		return error;

	if (out) {
		FUNC0(db);
		(*out)->db = db;
	}

	return 0;
}