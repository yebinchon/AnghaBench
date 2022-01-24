#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct ep93xx_pata_data {int dummy; } ;
struct ata_queued_cmd {TYPE_2__* dev; } ;
struct ata_port {TYPE_3__* host; } ;
struct TYPE_6__ {struct ep93xx_pata_data* private_data; } ;
struct TYPE_5__ {TYPE_1__* link; } ;
struct TYPE_4__ {struct ata_port* ap; } ;

/* Variables and functions */
 int /*<<< orphan*/  IDECTRL_ADDR_DATA ; 
 int READ ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ep93xx_pata_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ep93xx_pata_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char) ; 
 scalar_t__ FUNC4 (unsigned int) ; 

__attribute__((used)) static unsigned int FUNC5(struct ata_queued_cmd *qc,
					  unsigned char *buf,
					  unsigned int buflen, int rw)
{
	struct ata_port *ap = qc->dev->link->ap;
	struct ep93xx_pata_data *drv_data = ap->host->private_data;
	u16 *data = (u16 *)buf;
	unsigned int words = buflen >> 1;

	/* Transfer multiple of 2 bytes */
	while (words--)
		if (rw == READ)
			*data++ = FUNC0(
				FUNC1(
					drv_data, IDECTRL_ADDR_DATA));
		else
			FUNC2(drv_data, FUNC3(*data++),
				IDECTRL_ADDR_DATA);

	/* Transfer trailing 1 byte, if any. */
	if (FUNC4(buflen & 0x01)) {
		unsigned char pad[2] = { };

		buf += buflen - 1;

		if (rw == READ) {
			*pad = FUNC0(
				FUNC1(
					drv_data, IDECTRL_ADDR_DATA));
			*buf = pad[0];
		} else {
			pad[0] = *buf;
			FUNC2(drv_data, FUNC3(*pad),
					  IDECTRL_ADDR_DATA);
		}
		words++;
	}

	return words << 1;
}