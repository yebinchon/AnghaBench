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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u ;
typedef  int /*<<< orphan*/  substring_t ;
struct kernfs_open_file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * i_lcoefs; } ;
struct ioc {int user_cost_model; int /*<<< orphan*/  lock; TYPE_1__ params; } ;
struct gendisk {int /*<<< orphan*/  queue; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
#define  COST_CTRL 129 
#define  COST_MODEL 128 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct gendisk*) ; 
 int MAX_OPT_ARGS ; 
 int NR_I_LCOEFS ; 
 size_t FUNC1 (struct gendisk*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct gendisk* FUNC3 (char**) ; 
 int /*<<< orphan*/  cost_ctrl_tokens ; 
 int /*<<< orphan*/  i_lcoef_tokens ; 
 int /*<<< orphan*/  FUNC4 (struct ioc*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct gendisk*) ; 
 struct ioc* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 char* FUNC14 (char**,char*) ; 

__attribute__((used)) static ssize_t FUNC15(struct kernfs_open_file *of, char *input,
				    size_t nbytes, loff_t off)
{
	struct gendisk *disk;
	struct ioc *ioc;
	u64 u[NR_I_LCOEFS];
	bool user;
	char *p;
	int ret;

	disk = FUNC3(&input);
	if (FUNC0(disk))
		return FUNC1(disk);

	ioc = FUNC10(disk->queue);
	if (!ioc) {
		ret = FUNC2(disk->queue);
		if (ret)
			goto err;
		ioc = FUNC10(disk->queue);
	}

	FUNC11(&ioc->lock);
	FUNC8(u, ioc->params.i_lcoefs, sizeof(u));
	user = ioc->user_cost_model;
	FUNC12(&ioc->lock);

	while ((p = FUNC14(&input, " \t\n"))) {
		substring_t args[MAX_OPT_ARGS];
		char buf[32];
		int tok;
		u64 v;

		if (!*p)
			continue;

		switch (FUNC6(p, cost_ctrl_tokens, args)) {
		case COST_CTRL:
			FUNC5(buf, &args[0], sizeof(buf));
			if (!FUNC13(buf, "auto"))
				user = false;
			else if (!FUNC13(buf, "user"))
				user = true;
			else
				goto einval;
			continue;
		case COST_MODEL:
			FUNC5(buf, &args[0], sizeof(buf));
			if (FUNC13(buf, "linear"))
				goto einval;
			continue;
		}

		tok = FUNC6(p, i_lcoef_tokens, args);
		if (tok == NR_I_LCOEFS)
			goto einval;
		if (FUNC7(&args[0], &v))
			goto einval;
		u[tok] = v;
		user = true;
	}

	FUNC11(&ioc->lock);
	if (user) {
		FUNC8(ioc->params.i_lcoefs, u, sizeof(u));
		ioc->user_cost_model = true;
	} else {
		ioc->user_cost_model = false;
	}
	FUNC4(ioc, true);
	FUNC12(&ioc->lock);

	FUNC9(disk);
	return nbytes;

einval:
	ret = -EINVAL;
err:
	FUNC9(disk);
	return ret;
}