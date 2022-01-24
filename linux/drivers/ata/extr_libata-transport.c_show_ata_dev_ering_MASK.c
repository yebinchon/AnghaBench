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
struct ata_show_ering_arg {char* member_0; int /*<<< orphan*/  written; int /*<<< orphan*/  member_1; } ;
struct ata_device {int /*<<< orphan*/  ering; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ata_show_ering_arg*) ; 
 int /*<<< orphan*/  ata_show_ering ; 
 struct ata_device* FUNC1 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC2(struct device *dev,
		   struct device_attribute *attr, char *buf)
{
	struct ata_device *ata_dev = FUNC1(dev);
	struct ata_show_ering_arg arg = { buf, 0 };

	FUNC0(&ata_dev->ering, ata_show_ering, &arg);
	return arg.written;
}