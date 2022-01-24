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
struct th_data {int /*<<< orphan*/  id; int /*<<< orphan*/  path; } ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_refdb ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int GIT_ELOCKED ; 
 int NREFS ; 
 int /*<<< orphan*/  FUNC0 (struct th_data*,int) ; 
 scalar_t__ concurrent_compress ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void *FUNC11(void *arg)
{
	int i, error;
	struct th_data *data = (struct th_data *) arg;
	git_oid head;
	char name[128];
	git_reference *ref[NREFS];
	git_repository *repo;

	FUNC0(data, FUNC8(&repo, data->path));

	do {
		error = FUNC6(&head, repo, "HEAD");
	} while (error == GIT_ELOCKED);
	FUNC0(data, error);

	for (i = 0; i < NREFS; ++i) {
		FUNC10(name, sizeof(name), "refs/heads/thread-%03d-%02d", data->id, i);
		do {
			error = FUNC4(&ref[i], repo, name, &head, 0, NULL);
		} while (error == GIT_ELOCKED);
		FUNC0(data, error);

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

	for (i = 0; i < NREFS; ++i)
		FUNC5(ref[i]);

	FUNC7(repo);

	FUNC1();
	return arg;
}