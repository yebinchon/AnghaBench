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
struct ata_port {size_t target_lpm_policy; } ;
struct Scsi_Host {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 size_t FUNC0 (char**) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 char** ata_lpm_policy_names ; 
 struct ata_port* FUNC1 (struct Scsi_Host*) ; 
 struct Scsi_Host* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				 struct device_attribute *attr, char *buf)
{
	struct Scsi_Host *shost = FUNC2(dev);
	struct ata_port *ap = FUNC1(shost);

	if (ap->target_lpm_policy >= FUNC0(ata_lpm_policy_names))
		return -EINVAL;

	return FUNC3(buf, PAGE_SIZE, "%s\n",
			ata_lpm_policy_names[ap->target_lpm_policy]);
}