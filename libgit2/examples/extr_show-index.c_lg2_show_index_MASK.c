#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_7__ {scalar_t__ seconds; } ;
struct TYPE_6__ {scalar_t__ seconds; } ;
struct TYPE_8__ {char* path; int mode; TYPE_2__ mtime; TYPE_1__ ctime; scalar_t__ gid; scalar_t__ uid; scalar_t__ ino; scalar_t__ dev; scalar_t__ file_size; int /*<<< orphan*/  id; } ;
typedef  TYPE_3__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int GIT_OID_HEXSZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_3__ const*) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 scalar_t__ FUNC13 (char*,char*) ; 
 size_t FUNC14 (char*) ; 

int FUNC15(git_repository *repo, int argc, char** argv)
{
	git_index *index;
	size_t i, ecount;
	char *dir = ".";
	size_t dirlen;
	char out[GIT_OID_HEXSZ+1];
	out[GIT_OID_HEXSZ] = '\0';

	if (argc > 2)
		FUNC1("usage: showindex [<repo-dir>]", NULL);
	if (argc > 1)
		dir = argv[1];

	dirlen = FUNC14(dir);
	if (dirlen > 5 && FUNC13(dir + dirlen - 5, "index") == 0) {
		FUNC0(FUNC6(&index, dir), "could not open index", dir);
	} else {
		FUNC0(FUNC11(&repo, dir, 0, NULL), "could not open repository", dir);
		FUNC0(FUNC10(&index, repo), "could not open repository index", NULL);
		FUNC9(repo);
	}

	FUNC7(index, 0);

	ecount = FUNC3(index);
	if (!ecount)
		FUNC12("Empty index\n");

	for (i = 0; i < ecount; ++i) {
		const git_index_entry *e = FUNC5(index, i);

		FUNC8(out, &e->id);

		FUNC12("File Path: %s\n", e->path);
		FUNC12("    Stage: %d\n", FUNC2(e));
		FUNC12(" Blob SHA: %s\n", out);
		FUNC12("File Mode: %07o\n", e->mode);
		FUNC12("File Size: %d bytes\n", (int)e->file_size);
		FUNC12("Dev/Inode: %d/%d\n", (int)e->dev, (int)e->ino);
		FUNC12("  UID/GID: %d/%d\n", (int)e->uid, (int)e->gid);
		FUNC12("    ctime: %d\n", (int)e->ctime.seconds);
		FUNC12("    mtime: %d\n", (int)e->mtime.seconds);
		FUNC12("\n");
	}

	FUNC4(index);

	return 0;
}