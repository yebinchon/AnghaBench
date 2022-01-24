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
typedef  scalar_t__ u64 ;
struct kernfs_open_file {int dummy; } ;
struct iolatency_grp {scalar_t__ min_lat_nsec; struct blk_iolatency* blkiolat; } ;
struct blkg_conf_ctx {char* body; struct blkcg_gq* blkg; } ;
struct blkcg_gq {int /*<<< orphan*/  q; } ;
struct blkcg {int dummy; } ;
struct blk_iolatency {int /*<<< orphan*/  enabled; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ NSEC_PER_USEC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  blkcg_policy_iolatency ; 
 int /*<<< orphan*/  FUNC7 (struct blkg_conf_ctx*) ; 
 int FUNC8 (struct blkcg*,int /*<<< orphan*/ *,char*,struct blkg_conf_ctx*) ; 
 int /*<<< orphan*/  FUNC9 (struct blkcg_gq*) ; 
 int /*<<< orphan*/  FUNC10 (struct blkcg_gq*) ; 
 struct iolatency_grp* FUNC11 (struct blkcg_gq*) ; 
 struct blkcg* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct blkcg_gq*) ; 
 int FUNC14 (struct blkcg_gq*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct kernfs_open_file*) ; 
 int FUNC16 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 
 char* FUNC18 (char**,char*) ; 

__attribute__((used)) static ssize_t FUNC19(struct kernfs_open_file *of, char *buf,
			     size_t nbytes, loff_t off)
{
	struct blkcg *blkcg = FUNC12(FUNC15(of));
	struct blkcg_gq *blkg;
	struct blkg_conf_ctx ctx;
	struct iolatency_grp *iolat;
	char *p, *tok;
	u64 lat_val = 0;
	u64 oldval;
	int ret;
	int enable = 0;

	ret = FUNC8(blkcg, &blkcg_policy_iolatency, buf, &ctx);
	if (ret)
		return ret;

	iolat = FUNC11(ctx.blkg);
	p = ctx.body;

	ret = -EINVAL;
	while ((tok = FUNC18(&p, " "))) {
		char key[16];
		char val[21];	/* 18446744073709551616 */

		if (FUNC16(tok, "%15[^=]=%20s", key, val) != 2)
			goto out;

		if (!FUNC17(key, "target")) {
			u64 v;

			if (!FUNC17(val, "max"))
				lat_val = 0;
			else if (FUNC16(val, "%llu", &v) == 1)
				lat_val = v * NSEC_PER_USEC;
			else
				goto out;
		} else {
			goto out;
		}
	}

	/* Walk up the tree to see if our new val is lower than it should be. */
	blkg = ctx.blkg;
	oldval = iolat->min_lat_nsec;

	enable = FUNC14(blkg, lat_val);
	if (enable) {
		FUNC0(!FUNC3(blkg->q));
		FUNC9(blkg);
	}

	if (oldval != iolat->min_lat_nsec) {
		FUNC13(blkg);
	}

	ret = 0;
out:
	FUNC7(&ctx);
	if (ret == 0 && enable) {
		struct iolatency_grp *tmp = FUNC11(blkg);
		struct blk_iolatency *blkiolat = tmp->blkiolat;

		FUNC4(blkg->q);

		if (enable == 1)
			FUNC2(&blkiolat->enabled);
		else if (enable == -1)
			FUNC1(&blkiolat->enabled);
		else
			FUNC0(1);

		FUNC5(blkg->q);

		FUNC10(blkg);
		FUNC6(blkg->q);
	}
	return ret ?: nbytes;
}