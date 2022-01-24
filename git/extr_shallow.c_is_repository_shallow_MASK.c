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
struct repository {TYPE_1__* parsed_objects; } ;
struct object_id {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {char* alternate_shallow_file; int is_shallow; int /*<<< orphan*/  shallow_stat; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 scalar_t__ FUNC5 (char*,struct object_id*) ; 
 char* FUNC6 (struct repository*) ; 
 int /*<<< orphan*/  FUNC7 (struct repository*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10(struct repository *r)
{
	/*
	 * NEEDSWORK: This function updates
	 * r->parsed_objects->{is_shallow,shallow_stat} as a side effect but
	 * there is no corresponding function to clear them when the shallow
	 * file is updated.
	 */

	FILE *fp;
	char buf[1024];
	const char *path = r->parsed_objects->alternate_shallow_file;

	if (r->parsed_objects->is_shallow >= 0)
		return r->parsed_objects->is_shallow;

	if (!path)
		path = FUNC6(r);
	/*
	 * fetch-pack sets '--shallow-file ""' as an indicator that no
	 * shallow file should be used. We could just open it and it
	 * will likely fail. But let's do an explicit check instead.
	 */
	if (!*path || (fp = FUNC4(path, "r")) == NULL) {
		FUNC8(r->parsed_objects->shallow_stat);
		r->parsed_objects->is_shallow = 0;
		return r->parsed_objects->is_shallow;
	}
	FUNC9(r->parsed_objects->shallow_stat, FUNC3(fp));
	r->parsed_objects->is_shallow = 1;

	while (FUNC2(buf, sizeof(buf), fp)) {
		struct object_id oid;
		if (FUNC5(buf, &oid))
			FUNC0("bad shallow line: %s", buf);
		FUNC7(r, &oid);
	}
	FUNC1(fp);
	return r->parsed_objects->is_shallow;
}