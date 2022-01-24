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
struct th_data {int id; int /*<<< orphan*/  path; } ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_refdb ;

/* Variables and functions */
 int GIT_ELOCKED ; 
 int GIT_ENOTFOUND ; 
 int NREFS ; 
 int /*<<< orphan*/  FUNC0 (struct th_data*,int) ; 
 scalar_t__ concurrent_compress ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,int,int) ; 

__attribute__((used)) static void *FUNC11(void *arg)
{
	int i, error;
	struct th_data *data = (struct th_data *) arg;
	git_reference *ref;
	char name[128];
	git_repository *repo;

	FUNC0(data, FUNC8(&repo, data->path));

	for (i = 0; i < NREFS; ++i) {
		FUNC10(
			name, sizeof(name), "refs/heads/thread-%03d-%02d", (data->id) & ~0x3, i);

		if (!FUNC6(&ref, repo, name)) {
			do {
				error = FUNC4(ref);
			} while (error == GIT_ELOCKED);
			/* Sometimes we race with other deleter threads */
			if (error == GIT_ENOTFOUND)
				error = 0;

			FUNC0(data, error);
			FUNC5(ref);
		}

		if (concurrent_compress && i == NREFS/2) {
			git_refdb *refdb;
			FUNC0(data, FUNC9(&refdb, repo));
			do {
				error = FUNC2(refdb);
			} while (error == GIT_ELOCKED);
			FUNC0(data, error);
			FUNC3(refdb);
		}
	}

	FUNC7(repo);
	FUNC1();
	return arg;
}