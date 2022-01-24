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
struct userdiff_driver {char* external; } ;
struct strbuf {char* buf; scalar_t__ len; } ;
struct TYPE_3__ {scalar_t__ allow_external; } ;
struct diff_options {int /*<<< orphan*/  file; int /*<<< orphan*/  use_color; TYPE_2__* repo; TYPE_1__ flags; } ;
struct diff_filespec {int dummy; } ;
struct diff_filepair {scalar_t__ status; scalar_t__ score; } ;
struct TYPE_4__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 scalar_t__ DIFF_STATUS_MODIFIED ; 
 int /*<<< orphan*/  FUNC0 (char const*,char const*,struct diff_filespec*,struct diff_filespec*,char const*,int,struct diff_options*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char const*,char const*,struct diff_filespec*,struct diff_filespec*,struct diff_options*,struct diff_filepair*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*,char const*,struct diff_filespec*,struct diff_filespec*,char const*,struct diff_options*) ; 
 struct userdiff_driver* FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(const char *pgm,
			 const char *name,
			 const char *other,
			 const char *attr_path,
			 struct diff_filespec *one,
			 struct diff_filespec *two,
			 struct strbuf *msg,
			 struct diff_options *o,
			 struct diff_filepair *p)
{
	const char *xfrm_msg = NULL;
	int complete_rewrite = (p->status == DIFF_STATUS_MODIFIED) && p->score;
	int must_show_header = 0;


	if (o->flags.allow_external) {
		struct userdiff_driver *drv;

		drv = FUNC4(o->repo->index, attr_path);
		if (drv && drv->external)
			pgm = drv->external;
	}

	if (msg) {
		/*
		 * don't use colors when the header is intended for an
		 * external diff driver
		 */
		FUNC1(msg, name, other, one, two, o, p,
			      &must_show_header,
			      FUNC5(o->use_color) && !pgm);
		xfrm_msg = msg->len ? msg->buf : NULL;
	}

	if (pgm) {
		FUNC3(pgm, name, other, one, two, xfrm_msg, o);
		return;
	}
	if (one && two)
		FUNC0(name, other ? other : name,
			     one, two, xfrm_msg, must_show_header,
			     o, complete_rewrite);
	else
		FUNC2(o->file, "* Unmerged path %s\n", name);
}