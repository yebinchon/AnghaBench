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
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct stat {int /*<<< orphan*/  st_size; int /*<<< orphan*/  st_mode; } ;
struct repository {int /*<<< orphan*/  index; } ;
struct diff_tempfile {char* name; int /*<<< orphan*/  mode; int /*<<< orphan*/  hex; } ;
struct diff_filespec {int /*<<< orphan*/  mode; int /*<<< orphan*/  oid; int /*<<< orphan*/  size; int /*<<< orphan*/  data; int /*<<< orphan*/  path; scalar_t__ oid_valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct diff_filespec*) ; 
 scalar_t__ ENOENT ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  S_IFLNK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct diff_tempfile* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 scalar_t__ FUNC6 (struct repository*,struct diff_filespec*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC7 (char const*,struct stat*) ; 
 int /*<<< orphan*/  null_oid ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*,struct diff_tempfile*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC11 (struct strbuf*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,char*,...) ; 

__attribute__((used)) static struct diff_tempfile *FUNC14(struct repository *r,
					       const char *name,
					       struct diff_filespec *one)
{
	struct diff_tempfile *temp = FUNC3();

	if (!FUNC0(one)) {
	not_a_valid_file:
		/* A '-' entry produces this for file-2, and
		 * a '+' entry produces this for file-1.
		 */
		temp->name = "/dev/null";
		FUNC13(temp->hex, sizeof(temp->hex), ".");
		FUNC13(temp->mode, sizeof(temp->mode), ".");
		return temp;
	}

	if (!FUNC1(one->mode) &&
	    (!one->oid_valid ||
	     FUNC10(r->index, name, &one->oid, 1))) {
		struct stat st;
		if (FUNC7(name, &st) < 0) {
			if (errno == ENOENT)
				goto not_a_valid_file;
			FUNC5("stat(%s)", name);
		}
		if (FUNC2(st.st_mode)) {
			struct strbuf sb = STRBUF_INIT;
			if (FUNC11(&sb, name, st.st_size) < 0)
				FUNC5("readlink(%s)", name);
			FUNC9(r->index, name, temp, sb.buf, sb.len,
				       (one->oid_valid ?
					&one->oid : &null_oid),
				       (one->oid_valid ?
					one->mode : S_IFLNK));
			FUNC12(&sb);
		}
		else {
			/* we can borrow from the file in the work tree */
			temp->name = name;
			if (!one->oid_valid)
				FUNC8(temp->hex, &null_oid);
			else
				FUNC8(temp->hex, &one->oid);
			/* Even though we may sometimes borrow the
			 * contents from the work tree, we always want
			 * one->mode.  mode is trustworthy even when
			 * !(one->oid_valid), as long as
			 * DIFF_FILE_VALID(one).
			 */
			FUNC13(temp->mode, sizeof(temp->mode), "%06o", one->mode);
		}
		return temp;
	}
	else {
		if (FUNC6(r, one, 0))
			FUNC4("cannot read data blob for %s", one->path);
		FUNC9(r->index, name, temp,
			       one->data, one->size,
			       &one->oid, one->mode);
	}
	return temp;
}