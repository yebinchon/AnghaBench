#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct userdiff_driver {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  text; scalar_t__ allow_textconv; } ;
struct diff_options {int pickaxe_opts; int /*<<< orphan*/  repo; TYPE_1__ flags; int /*<<< orphan*/ * pickaxe; scalar_t__ objfind; } ;
struct diff_filepair {TYPE_7__* two; TYPE_7__* one; } ;
typedef  int /*<<< orphan*/  regex_t ;
typedef  int (* pickaxe_fn ) (TYPE_2__*,TYPE_2__*,struct diff_options*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;
struct TYPE_13__ {int /*<<< orphan*/  ptr; void* size; } ;
typedef  TYPE_2__ mmfile_t ;
typedef  int /*<<< orphan*/  kwset_t ;
struct TYPE_14__ {int /*<<< orphan*/  oid; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_7__*) ; 
 int DIFF_PICKAXE_KIND_G ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*) ; 
 scalar_t__ FUNC3 (struct diff_filepair*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,struct userdiff_driver*,TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct userdiff_driver* FUNC6 (int /*<<< orphan*/ ,TYPE_7__*) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct diff_filepair *p, struct diff_options *o,
			 regex_t *regexp, kwset_t kws, pickaxe_fn fn)
{
	struct userdiff_driver *textconv_one = NULL;
	struct userdiff_driver *textconv_two = NULL;
	mmfile_t mf1, mf2;
	int ret;

	/* ignore unmerged */
	if (!FUNC0(p->one) && !FUNC0(p->two))
		return 0;

	if (o->objfind) {
		return  (FUNC0(p->one) &&
			 FUNC7(o->objfind, &p->one->oid)) ||
			(FUNC0(p->two) &&
			 FUNC7(o->objfind, &p->two->oid));
	}

	if (!o->pickaxe[0])
		return 0;

	if (o->flags.allow_textconv) {
		textconv_one = FUNC6(o->repo, p->one);
		textconv_two = FUNC6(o->repo, p->two);
	}

	/*
	 * If we have an unmodified pair, we know that the count will be the
	 * same and don't even have to load the blobs. Unless textconv is in
	 * play, _and_ we are using two different textconv filters (e.g.,
	 * because a pair is an exact rename with different textconv attributes
	 * for each side, which might generate different content).
	 */
	if (textconv_one == textconv_two && FUNC3(p))
		return 0;

	if ((o->pickaxe_opts & DIFF_PICKAXE_KIND_G) &&
	    !o->flags.text &&
	    ((!textconv_one && FUNC1(o->repo, p->one)) ||
	     (!textconv_two && FUNC1(o->repo, p->two))))
		return 0;

	mf1.size = FUNC4(o->repo, textconv_one, p->one, &mf1.ptr);
	mf2.size = FUNC4(o->repo, textconv_two, p->two, &mf2.ptr);

	ret = fn(FUNC0(p->one) ? &mf1 : NULL,
		 FUNC0(p->two) ? &mf2 : NULL,
		 o, regexp, kws);

	if (textconv_one)
		FUNC5(mf1.ptr);
	if (textconv_two)
		FUNC5(mf2.ptr);
	FUNC2(p->one);
	FUNC2(p->two);

	return ret;
}