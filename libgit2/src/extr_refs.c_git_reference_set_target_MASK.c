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
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_9__ {int /*<<< orphan*/  oid; } ;
struct TYPE_10__ {TYPE_2__ target; int /*<<< orphan*/  name; TYPE_1__* db; } ;
typedef  TYPE_3__ git_reference ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_8__ {int /*<<< orphan*/ * repo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_3__*) ; 
 int FUNC2 (TYPE_3__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *,char const*) ; 

int FUNC3(
	git_reference **out,
	git_reference *ref,
	const git_oid *id,
	const char *log_message)
{
	int error;
	git_repository *repo;

	FUNC0(out && ref && id);

	repo = ref->db->repo;

	if ((error = FUNC1(ref)) < 0)
		return error;

	return FUNC2(out, repo, ref->name, id, 1, &ref->target.oid, log_message);
}