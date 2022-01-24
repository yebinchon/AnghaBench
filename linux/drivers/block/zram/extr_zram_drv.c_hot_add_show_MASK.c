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
struct class_attribute {int dummy; } ;
struct class {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  zram_index_mutex ; 

__attribute__((used)) static ssize_t FUNC4(struct class *class,
			struct class_attribute *attr,
			char *buf)
{
	int ret;

	FUNC0(&zram_index_mutex);
	ret = FUNC3();
	FUNC1(&zram_index_mutex);

	if (ret < 0)
		return ret;
	return FUNC2(buf, PAGE_SIZE, "%d\n", ret);
}