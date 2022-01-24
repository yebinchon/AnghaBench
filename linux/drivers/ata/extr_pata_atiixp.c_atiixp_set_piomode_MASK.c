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
struct ata_port {int dummy; } ;
struct ata_device {scalar_t__ pio_mode; } ;

/* Variables and functions */
 scalar_t__ XFER_PIO_0 ; 
 int /*<<< orphan*/  atiixp_lock ; 
 int /*<<< orphan*/  FUNC0 (struct ata_port*,struct ata_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct ata_port *ap, struct ata_device *adev)
{
	unsigned long flags;
	FUNC1(&atiixp_lock, flags);
	FUNC0(ap, adev, adev->pio_mode - XFER_PIO_0);
	FUNC2(&atiixp_lock, flags);
}