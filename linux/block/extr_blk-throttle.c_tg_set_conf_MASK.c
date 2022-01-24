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
typedef  unsigned int u64 ;
struct throtl_grp {int dummy; } ;
struct kernfs_open_file {int dummy; } ;
struct blkg_conf_ctx {int /*<<< orphan*/  blkg; int /*<<< orphan*/  body; } ;
struct blkcg {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {int private; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int U64_MAX ; 
 int /*<<< orphan*/  blkcg_policy_throtl ; 
 int /*<<< orphan*/  FUNC0 (struct blkg_conf_ctx*) ; 
 int FUNC1 (struct blkcg*,int /*<<< orphan*/ *,char*,struct blkg_conf_ctx*) ; 
 struct throtl_grp* FUNC2 (int /*<<< orphan*/ ) ; 
 struct blkcg* FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (struct kernfs_open_file*) ; 
 int /*<<< orphan*/  FUNC5 (struct kernfs_open_file*) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (struct throtl_grp*,int) ; 

__attribute__((used)) static ssize_t FUNC8(struct kernfs_open_file *of,
			   char *buf, size_t nbytes, loff_t off, bool is_u64)
{
	struct blkcg *blkcg = FUNC3(FUNC5(of));
	struct blkg_conf_ctx ctx;
	struct throtl_grp *tg;
	int ret;
	u64 v;

	ret = FUNC1(blkcg, &blkcg_policy_throtl, buf, &ctx);
	if (ret)
		return ret;

	ret = -EINVAL;
	if (FUNC6(ctx.body, "%llu", &v) != 1)
		goto out_finish;
	if (!v)
		v = U64_MAX;

	tg = FUNC2(ctx.blkg);

	if (is_u64)
		*(u64 *)((void *)tg + FUNC4(of)->private) = v;
	else
		*(unsigned int *)((void *)tg + FUNC4(of)->private) = v;

	FUNC7(tg, false);
	ret = 0;
out_finish:
	FUNC0(&ctx);
	return ret ?: nbytes;
}