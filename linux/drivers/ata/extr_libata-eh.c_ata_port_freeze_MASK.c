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
struct ata_port {TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  error_handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_port*) ; 
 int FUNC2 (struct ata_port*) ; 

int FUNC3(struct ata_port *ap)
{
	int nr_aborted;

	FUNC0(!ap->ops->error_handler);

	FUNC1(ap);
	nr_aborted = FUNC2(ap);

	return nr_aborted;
}