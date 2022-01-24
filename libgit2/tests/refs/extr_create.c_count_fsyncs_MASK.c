#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_refdb ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_master_tip ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 size_t p_fsync__cnt ; 

__attribute__((used)) static void FUNC7(size_t *create_count, size_t *compress_count)
{
	git_reference *ref = NULL;
	git_refdb *refdb;
	git_oid id;

	p_fsync__cnt = 0;

	FUNC1(&id, current_master_tip);
	FUNC0(FUNC4(&ref, g_repo, "refs/heads/fsync_test", &id, 0, "log message"));
	FUNC5(ref);

	*create_count = p_fsync__cnt;
	p_fsync__cnt = 0;

	FUNC0(FUNC6(&refdb, g_repo));
	FUNC0(FUNC2(refdb));
	FUNC3(refdb);

	*compress_count = p_fsync__cnt;
	p_fsync__cnt = 0;
}