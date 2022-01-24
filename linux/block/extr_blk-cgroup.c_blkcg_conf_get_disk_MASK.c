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
struct gendisk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENODEV ; 
 struct gendisk* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int) ; 
 struct gendisk* FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (struct gendisk*) ; 
 char* FUNC5 (char*) ; 
 int FUNC6 (char*,char*,unsigned int*,unsigned int*,int*) ; 

struct gendisk *FUNC7(char **inputp)
{
	char *input = *inputp;
	unsigned int major, minor;
	struct gendisk *disk;
	int key_len, part;

	if (FUNC6(input, "%u:%u%n", &major, &minor, &key_len) != 2)
		return FUNC0(-EINVAL);

	input += key_len;
	if (!FUNC3(*input))
		return FUNC0(-EINVAL);
	input = FUNC5(input);

	disk = FUNC2(FUNC1(major, minor), &part);
	if (!disk)
		return FUNC0(-ENODEV);
	if (part) {
		FUNC4(disk);
		return FUNC0(-ENODEV);
	}

	*inputp = input;
	return disk;
}