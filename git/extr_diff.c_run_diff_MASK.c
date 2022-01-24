#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  allow_external; } ;
struct diff_options {TYPE_2__* repo; TYPE_1__ flags; scalar_t__ prefix_length; } ;
struct diff_filespec {char* path; int mode; } ;
struct diff_filepair {struct diff_filespec* two; struct diff_filespec* one; } ;
struct TYPE_4__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct diff_filespec*) ; 
 scalar_t__ FUNC1 (struct diff_filepair*) ; 
 int S_IFMT ; 
 struct diff_filespec* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct diff_filespec*,int /*<<< orphan*/ ) ; 
 char* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct diff_filespec*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char const*,char const*,char const*,struct diff_filespec*,struct diff_filespec*,struct strbuf*,struct diff_options*,struct diff_filepair*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,char const**,char const**) ; 

__attribute__((used)) static void FUNC10(struct diff_filepair *p, struct diff_options *o)
{
	const char *pgm = FUNC4();
	struct strbuf msg;
	struct diff_filespec *one = p->one;
	struct diff_filespec *two = p->two;
	const char *name;
	const char *other;
	const char *attr_path;

	name  = one->path;
	other = (FUNC8(name, two->path) ? two->path : NULL);
	attr_path = name;
	if (o->prefix_length)
		FUNC9(o->prefix_length, &name, &other);

	if (!o->flags.allow_external)
		pgm = NULL;

	if (FUNC1(p)) {
		FUNC6(pgm, name, NULL, attr_path,
			     NULL, NULL, NULL, o, p);
		return;
	}

	FUNC3(one, o->repo->index);
	FUNC3(two, o->repo->index);

	if (!pgm &&
	    FUNC0(one) && FUNC0(two) &&
	    (S_IFMT & one->mode) != (S_IFMT & two->mode)) {
		/*
		 * a filepair that changes between file and symlink
		 * needs to be split into deletion and creation.
		 */
		struct diff_filespec *null = FUNC2(two->path);
		FUNC6(NULL, name, other, attr_path,
			     one, null, &msg,
			     o, p);
		FUNC5(null);
		FUNC7(&msg);

		null = FUNC2(one->path);
		FUNC6(NULL, name, other, attr_path,
			     null, two, &msg, o, p);
		FUNC5(null);
	}
	else
		FUNC6(pgm, name, other, attr_path,
			     one, two, &msg, o, p);

	FUNC7(&msg);
}