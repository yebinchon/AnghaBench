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
struct hwrng {char* name; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct hwrng*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct hwrng*) ; 
 struct hwrng* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct hwrng*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				       struct device_attribute *attr,
				       char *buf)
{
	ssize_t ret;
	struct hwrng *rng;

	rng = FUNC2();
	if (FUNC0(rng))
		return FUNC1(rng);

	ret = FUNC4(buf, PAGE_SIZE, "%s\n", rng ? rng->name : "none");
	FUNC3(rng);

	return ret;
}