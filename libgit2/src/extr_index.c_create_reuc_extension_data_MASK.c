#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* path; TYPE_1__* oid; scalar_t__* mode; } ;
typedef  TYPE_2__ git_index_reuc_entry ;
typedef  int /*<<< orphan*/  git_buf ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int GIT_OID_RAWSZ ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(git_buf *reuc_buf, git_index_reuc_entry *reuc)
{
	int i;
	int error = 0;

	if ((error = FUNC1(reuc_buf, reuc->path, FUNC2(reuc->path) + 1)) < 0)
		return error;

	for (i = 0; i < 3; i++) {
		if ((error = FUNC0(reuc_buf, "%o", reuc->mode[i])) < 0 ||
			(error = FUNC1(reuc_buf, "\0", 1)) < 0)
			return error;
	}

	for (i = 0; i < 3; i++) {
		if (reuc->mode[i] && (error = FUNC1(reuc_buf, (char *)&reuc->oid[i].id, GIT_OID_RAWSZ)) < 0)
			return error;
	}

	return 0;
}