#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_signature ;
struct TYPE_8__ {TYPE_1__* db; } ;
typedef  TYPE_2__ git_reference ;
struct TYPE_7__ {int /*<<< orphan*/  repo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_2__**,TYPE_2__*,char const*,int,int /*<<< orphan*/ *,char const*) ; 

int FUNC4(
	git_reference **out,
	git_reference *ref,
	const char *new_name,
	int force,
	const char *log_message)
{
	git_signature *who;
	int error;

	FUNC0(out && ref);

	if ((error = FUNC1(&who, ref->db->repo)) < 0)
		return error;

	error = FUNC3(out, ref, new_name, force, who, log_message);
	FUNC2(who);

	return error;
}