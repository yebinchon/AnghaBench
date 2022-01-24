#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct attribute_container {int dummy; } ;
struct TYPE_2__ {struct attribute_container ac; } ;
struct ata_internal {TYPE_1__ link_attr_cont; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  ata_scsi_transport_template ; 
 struct ata_internal* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct attribute_container *cont,
			   struct device *dev)
{
	struct ata_internal* i = FUNC1(ata_scsi_transport_template);
	if (!FUNC0(dev))
		return 0;
	return &i->link_attr_cont.ac == cont;
}