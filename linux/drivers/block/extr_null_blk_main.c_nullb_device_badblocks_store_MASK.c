#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct TYPE_3__ {int /*<<< orphan*/  shift; } ;
struct nullb_device {TYPE_1__ badblocks; } ;
struct config_item {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (TYPE_1__*,scalar_t__,scalar_t__) ; 
 int FUNC1 (TYPE_1__*,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char const*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ,scalar_t__*) ; 
 char* FUNC6 (char*,char) ; 
 char* FUNC7 (char*) ; 
 struct nullb_device* FUNC8 (struct config_item*) ; 

__attribute__((used)) static ssize_t FUNC9(struct config_item *item,
				     const char *page, size_t count)
{
	struct nullb_device *t_dev = FUNC8(item);
	char *orig, *buf, *tmp;
	u64 start, end;
	int ret;

	orig = FUNC4(page, count, GFP_KERNEL);
	if (!orig)
		return -ENOMEM;

	buf = FUNC7(orig);

	ret = -EINVAL;
	if (buf[0] != '+' && buf[0] != '-')
		goto out;
	tmp = FUNC6(&buf[1], '-');
	if (!tmp)
		goto out;
	*tmp = '\0';
	ret = FUNC5(buf + 1, 0, &start);
	if (ret)
		goto out;
	ret = FUNC5(tmp + 1, 0, &end);
	if (ret)
		goto out;
	ret = -EINVAL;
	if (start > end)
		goto out;
	/* enable badblocks */
	FUNC2(&t_dev->badblocks.shift, -1, 0);
	if (buf[0] == '+')
		ret = FUNC1(&t_dev->badblocks, start,
			end - start + 1, 1);
	else
		ret = FUNC0(&t_dev->badblocks, start,
			end - start + 1);
	if (ret == 0)
		ret = count;
out:
	FUNC3(orig);
	return ret;
}