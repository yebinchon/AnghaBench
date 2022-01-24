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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ PRNG_MODE_TDES ; 
 scalar_t__ prng_mode ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static ssize_t FUNC1(struct device *dev,
			      struct device_attribute *attr,
			      char *buf)
{
	if (prng_mode == PRNG_MODE_TDES)
		return FUNC0(buf, PAGE_SIZE, "TDES\n");
	else
		return FUNC0(buf, PAGE_SIZE, "SHA512\n");
}