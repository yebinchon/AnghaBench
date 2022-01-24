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
struct zram {int /*<<< orphan*/  init_lock; int /*<<< orphan*/  compressor; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  compressor ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 size_t EBUSY ; 
 size_t EINVAL ; 
 struct zram* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct zram*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 
 size_t FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t len)
{
	struct zram *zram = FUNC1(dev);
	char compressor[FUNC0(zram->compressor)];
	size_t sz;

	FUNC6(compressor, buf, sizeof(compressor));
	/* ignore trailing newline */
	sz = FUNC7(compressor);
	if (sz > 0 && compressor[sz - 1] == '\n')
		compressor[sz - 1] = 0x00;

	if (!FUNC9(compressor))
		return -EINVAL;

	FUNC2(&zram->init_lock);
	if (FUNC3(zram)) {
		FUNC8(&zram->init_lock);
		FUNC4("Can't change algorithm for initialized device\n");
		return -EBUSY;
	}

	FUNC5(zram->compressor, compressor);
	FUNC8(&zram->init_lock);
	return len;
}