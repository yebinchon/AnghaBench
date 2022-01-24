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
struct ata_port {int /*<<< orphan*/  print_id; int /*<<< orphan*/  lock; TYPE_1__* ops; int /*<<< orphan*/  pflags; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* thaw ) (struct ata_port*) ;int /*<<< orphan*/  error_handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_PFLAG_FROZEN ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct ata_port*) ; 

void FUNC4(struct ata_port *ap)
{
	unsigned long flags;

	if (!ap->ops->error_handler)
		return;

	FUNC1(ap->lock, flags);

	ap->pflags &= ~ATA_PFLAG_FROZEN;

	if (ap->ops->thaw)
		ap->ops->thaw(ap);

	FUNC2(ap->lock, flags);

	FUNC0("ata%u port thawed\n", ap->print_id);
}