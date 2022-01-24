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
struct zram {int dummy; } ;
struct class_attribute {int dummy; } ;
struct class {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 struct zram* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (char const*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zram_index_idr ; 
 int /*<<< orphan*/  zram_index_mutex ; 
 int FUNC5 (struct zram*) ; 

__attribute__((used)) static ssize_t FUNC6(struct class *class,
			struct class_attribute *attr,
			const char *buf,
			size_t count)
{
	struct zram *zram;
	int ret, dev_id;

	/* dev_id is gendisk->first_minor, which is `int' */
	ret = FUNC2(buf, 10, &dev_id);
	if (ret)
		return ret;
	if (dev_id < 0)
		return -EINVAL;

	FUNC3(&zram_index_mutex);

	zram = FUNC0(&zram_index_idr, dev_id);
	if (zram) {
		ret = FUNC5(zram);
		if (!ret)
			FUNC1(&zram_index_idr, dev_id);
	} else {
		ret = -ENODEV;
	}

	FUNC4(&zram_index_mutex);
	return ret ? ret : count;
}