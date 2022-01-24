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
struct ata_port {int /*<<< orphan*/  print_id; TYPE_1__* ops; } ;
struct TYPE_2__ {scalar_t__ error_handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_port*) ; 
 int FUNC2 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct ata_port*) ; 

int FUNC4(struct ata_port *ap)
{
	int rc = 0;

	if (ap->ops->error_handler) {
		FUNC1(ap);
		FUNC3(ap);
	} else {
		FUNC0("ata%u: bus probe begin\n", ap->print_id);
		rc = FUNC2(ap);
		FUNC0("ata%u: bus probe end\n", ap->print_id);
	}
	return rc;
}