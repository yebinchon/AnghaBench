#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct patch_id_t {int ctxlen; scalar_t__ flags; int /*<<< orphan*/ * ctx; } ;
typedef  struct patch_id_t xpparam_t ;
typedef  int /*<<< orphan*/  xpp ;
typedef  int /*<<< orphan*/  xecfg ;
typedef  struct patch_id_t xdemitconf_t ;
struct object_id {int /*<<< orphan*/  hash; } ;
struct diff_queue_struct {int nr; struct diff_filepair** queue; } ;
struct diff_options {TYPE_2__* repo; } ;
struct diff_filepair {scalar_t__ status; TYPE_3__* one; TYPE_3__* two; } ;
typedef  int /*<<< orphan*/  mmfile_t ;
typedef  int /*<<< orphan*/  git_hash_ctx ;
struct TYPE_10__ {scalar_t__ mode; int /*<<< orphan*/  path; int /*<<< orphan*/  oid; } ;
struct TYPE_9__ {int /*<<< orphan*/  index; } ;
struct TYPE_8__ {int hexsz; int /*<<< orphan*/  (* final_fn ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* update_fn ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* init_fn ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (struct diff_filepair*) ; 
 scalar_t__ DIFF_STATUS_UNKNOWN ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 struct diff_queue_struct diff_queued_diff ; 
 scalar_t__ FUNC5 (struct diff_filepair*) ; 
 int /*<<< orphan*/  discard_hunk_line ; 
 int FUNC6 (char*,...) ; 
 scalar_t__ FUNC7 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (struct object_id*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct patch_id_t*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  patch_id_consume ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* the_hash_algo ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct patch_id_t*,struct patch_id_t*,struct patch_id_t*) ; 

__attribute__((used)) static int FUNC27(struct diff_options *options, struct object_id *oid, int diff_header_only, int stable)
{
	struct diff_queue_struct *q = &diff_queued_diff;
	int i;
	git_hash_ctx ctx;
	struct patch_id_t data;

	the_hash_algo->init_fn(&ctx);
	FUNC9(&data, 0, sizeof(struct patch_id_t));
	data.ctx = &ctx;
	FUNC11(oid);

	for (i = 0; i < q->nr; i++) {
		xpparam_t xpp;
		xdemitconf_t xecfg;
		mmfile_t mf1, mf2;
		struct diff_filepair *p = q->queue[i];
		int len1, len2;

		FUNC9(&xpp, 0, sizeof(xpp));
		FUNC9(&xecfg, 0, sizeof(xecfg));
		if (p->status == 0)
			return FUNC6("internal diff status error");
		if (p->status == DIFF_STATUS_UNKNOWN)
			continue;
		if (FUNC5(p))
			continue;
		if ((FUNC0(p->one) && FUNC2(p->one->mode)) ||
		    (FUNC0(p->two) && FUNC2(p->two->mode)))
			continue;
		if (FUNC1(p))
			continue;

		FUNC4(p->one, options->repo->index);
		FUNC4(p->two, options->repo->index);

		len1 = FUNC14(p->one->path, FUNC15(p->one->path));
		len2 = FUNC14(p->two->path, FUNC15(p->two->path));
		FUNC13(&ctx, "diff--git");
		FUNC13(&ctx, "a/");
		the_hash_algo->update_fn(&ctx, p->one->path, len1);
		FUNC13(&ctx, "b/");
		the_hash_algo->update_fn(&ctx, p->two->path, len2);

		if (p->one->mode == 0) {
			FUNC13(&ctx, "newfilemode");
			FUNC12(&ctx, p->two->mode);
			FUNC13(&ctx, "---/dev/null");
			FUNC13(&ctx, "+++b/");
			the_hash_algo->update_fn(&ctx, p->two->path, len2);
		} else if (p->two->mode == 0) {
			FUNC13(&ctx, "deletedfilemode");
			FUNC12(&ctx, p->one->mode);
			FUNC13(&ctx, "---a/");
			the_hash_algo->update_fn(&ctx, p->one->path, len1);
			FUNC13(&ctx, "+++/dev/null");
		} else {
			FUNC13(&ctx, "---a/");
			the_hash_algo->update_fn(&ctx, p->one->path, len1);
			FUNC13(&ctx, "+++b/");
			the_hash_algo->update_fn(&ctx, p->two->path, len2);
		}

		if (diff_header_only)
			continue;

		if (FUNC7(options->repo, &mf1, p->one) < 0 ||
		    FUNC7(options->repo, &mf2, p->two) < 0)
			return FUNC6("unable to read files to diff");

		if (FUNC3(options->repo, p->one) ||
		    FUNC3(options->repo, p->two)) {
			the_hash_algo->update_fn(&ctx, FUNC10(&p->one->oid),
					the_hash_algo->hexsz);
			the_hash_algo->update_fn(&ctx, FUNC10(&p->two->oid),
					the_hash_algo->hexsz);
			continue;
		}

		xpp.flags = 0;
		xecfg.ctxlen = 3;
		xecfg.flags = 0;
		if (FUNC26(&mf1, &mf2, discard_hunk_line,
				  patch_id_consume, &data, &xpp, &xecfg))
			return FUNC6("unable to generate patch-id diff for %s",
				     p->one->path);

		if (stable)
			FUNC8(oid, &ctx);
	}

	if (!stable)
		the_hash_algo->final_fn(oid->hash, &ctx);

	return 0;
}