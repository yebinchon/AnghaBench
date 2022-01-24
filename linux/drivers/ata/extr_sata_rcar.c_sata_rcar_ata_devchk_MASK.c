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
typedef  int u8 ;
struct ata_ioports {int /*<<< orphan*/  lbal_addr; int /*<<< orphan*/  nsect_addr; } ;
struct ata_port {struct ata_ioports ioaddr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_port*,unsigned int) ; 

__attribute__((used)) static unsigned int FUNC3(struct ata_port *ap,
					 unsigned int device)
{
	struct ata_ioports *ioaddr = &ap->ioaddr;
	u8 nsect, lbal;

	FUNC2(ap, device);

	FUNC1(0x55, ioaddr->nsect_addr);
	FUNC1(0xaa, ioaddr->lbal_addr);

	FUNC1(0xaa, ioaddr->nsect_addr);
	FUNC1(0x55, ioaddr->lbal_addr);

	FUNC1(0x55, ioaddr->nsect_addr);
	FUNC1(0xaa, ioaddr->lbal_addr);

	nsect = FUNC0(ioaddr->nsect_addr);
	lbal  = FUNC0(ioaddr->lbal_addr);

	if (nsect == 0x55 && lbal == 0xaa)
		return 1;	/* found a device */

	return 0;		/* nothing found */
}