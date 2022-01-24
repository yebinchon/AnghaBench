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
struct ata_port {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_FLAG_NCQ ; 
 int /*<<< orphan*/  FUNC0 (struct ata_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_port*) ; 

__attribute__((used)) static void FUNC2(struct ata_port *ap)
{
	FUNC1(ap);
	FUNC0(ap, 0);

	ap->flags |= ATA_FLAG_NCQ;
}