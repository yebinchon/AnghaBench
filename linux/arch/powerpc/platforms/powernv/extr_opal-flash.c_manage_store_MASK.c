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
typedef  int /*<<< orphan*/  uint8_t ;
struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FLASH_COMMIT_TMP_SIDE ; 
 int /*<<< orphan*/  FLASH_REJECT_TMP_SIDE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC1(struct kobject *kobj,
			    struct kobj_attribute *attr,
			    const char *buf, size_t count)
{
	uint8_t op;
	switch (buf[0]) {
	case '0':
		op = FLASH_REJECT_TMP_SIDE;
		break;
	case '1':
		op = FLASH_COMMIT_TMP_SIDE;
		break;
	default:
		return -EINVAL;
	}

	/* commit/reject temporary image */
	FUNC0(op);
	return count;
}