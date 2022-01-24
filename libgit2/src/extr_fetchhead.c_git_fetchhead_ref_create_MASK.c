#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_6__ {unsigned int is_merge; void* remote_url; void* ref_name; int /*<<< orphan*/  oid; } ;
typedef  TYPE_1__ git_fetchhead_ref ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 (int) ; 
 void* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int) ; 

int FUNC6(
	git_fetchhead_ref **out,
	git_oid *oid,
	unsigned int is_merge,
	const char *ref_name,
	const char *remote_url)
{
	git_fetchhead_ref *fetchhead_ref;

	FUNC1(out && oid);

	*out = NULL;

	fetchhead_ref = FUNC2(sizeof(git_fetchhead_ref));
	FUNC0(fetchhead_ref);

	FUNC5(fetchhead_ref, 0x0, sizeof(git_fetchhead_ref));

	FUNC4(&fetchhead_ref->oid, oid);
	fetchhead_ref->is_merge = is_merge;

	if (ref_name)
		fetchhead_ref->ref_name = FUNC3(ref_name);

	if (remote_url)
		fetchhead_ref->remote_url = FUNC3(remote_url);

	*out = fetchhead_ref;

	return 0;
}