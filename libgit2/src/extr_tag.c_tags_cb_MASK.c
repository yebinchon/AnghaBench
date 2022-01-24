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
struct TYPE_2__ {int (* cb ) (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  cb_data; int /*<<< orphan*/  repo; } ;
typedef  TYPE_1__ tag_cb_data ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_REFS_TAGS_DIR ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(const char *ref, void *data)
{
	int error;
	git_oid oid;
	tag_cb_data *d = (tag_cb_data *)data;

	if (FUNC0(ref, GIT_REFS_TAGS_DIR) != 0)
		return 0; /* no tag */

	if (!(error = FUNC2(&oid, d->repo, ref))) {
		if ((error = d->cb(ref, &oid, d->cb_data)) != 0)
			FUNC1(error, "git_tag_foreach");
	}

	return error;
}