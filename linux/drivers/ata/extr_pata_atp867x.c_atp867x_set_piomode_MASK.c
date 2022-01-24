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
struct atp867x_priv {int /*<<< orphan*/  eightb_piospd; int /*<<< orphan*/  mstr_piospd; int /*<<< orphan*/  slave_piospd; int /*<<< orphan*/  dma_mode; } ;
struct ata_timing {int /*<<< orphan*/  rec8b; int /*<<< orphan*/  act8b; int /*<<< orphan*/  recover; int /*<<< orphan*/  active; } ;
struct ata_port {struct atp867x_priv* private_data; } ;
struct ata_device {int pio_mode; int devno; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_TIMING_8BIT ; 
 int ATP867X_IO_DMAMODE_MSTR_MASK ; 
 int ATP867X_IO_DMAMODE_SLAVE_MASK ; 
 struct ata_device* FUNC0 (struct ata_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_device*,int,struct ata_timing*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_timing*,struct ata_timing*,struct ata_timing*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ata_port*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct ata_port *ap, struct ata_device *adev)
{
	struct ata_device *peer = FUNC0(adev);
	struct atp867x_priv *dp = ap->private_data;
	u8 speed = adev->pio_mode;
	struct ata_timing t, p;
	int T, UT;
	u8 b;

	T = 1000000000 / 33333;
	UT = T / 4;

	FUNC1(adev, speed, &t, T, UT);
	if (peer && peer->pio_mode) {
		FUNC1(peer, peer->pio_mode, &p, T, UT);
		FUNC2(&p, &t, &t, ATA_TIMING_8BIT);
	}

	b = FUNC5(dp->dma_mode);
	if (adev->devno & 1)
		b = (b & ~ATP867X_IO_DMAMODE_SLAVE_MASK);
	else
		b = (b & ~ATP867X_IO_DMAMODE_MSTR_MASK);
	FUNC6(b, dp->dma_mode);

	b = FUNC3(ap, t.active) |
	    FUNC4(t.recover);

	if (adev->devno & 1)
		FUNC6(b, dp->slave_piospd);
	else
		FUNC6(b, dp->mstr_piospd);

	b = FUNC3(ap, t.act8b) |
	    FUNC4(t.rec8b);

	FUNC6(b, dp->eightb_piospd);
}