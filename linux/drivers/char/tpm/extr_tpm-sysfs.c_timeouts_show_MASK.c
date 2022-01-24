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
struct tpm_chip {scalar_t__ timeout_adjusted; int /*<<< orphan*/  timeout_d; int /*<<< orphan*/  timeout_c; int /*<<< orphan*/  timeout_b; int /*<<< orphan*/  timeout_a; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,int,int,int,char*) ; 
 struct tpm_chip* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev, struct device_attribute *attr,
			     char *buf)
{
	struct tpm_chip *chip = FUNC2(dev);

	return FUNC1(buf, "%d %d %d %d [%s]\n",
		       FUNC0(chip->timeout_a),
		       FUNC0(chip->timeout_b),
		       FUNC0(chip->timeout_c),
		       FUNC0(chip->timeout_d),
		       chip->timeout_adjusted
		       ? "adjusted" : "original");
}