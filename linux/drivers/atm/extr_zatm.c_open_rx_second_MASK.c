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
struct zatm_vcc {int rx_chan; } ;
struct zatm_dev {int /*<<< orphan*/  lock; } ;
struct atm_vcc {int vci; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 struct zatm_dev* FUNC1 (int /*<<< orphan*/ ) ; 
 struct zatm_vcc* FUNC2 (struct atm_vcc*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int uPD98401_RXLT_ENBL ; 
 int FUNC6 (struct zatm_dev*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct zatm_dev*,int,int) ; 

__attribute__((used)) static int FUNC8(struct atm_vcc *vcc)
{
	struct zatm_dev *zatm_dev;
	struct zatm_vcc *zatm_vcc;
	unsigned long flags;
	int pos,shift;

	FUNC0("open_rx_second (0x%x)\n",FUNC3(0xc053));
	zatm_dev = FUNC1(vcc->dev);
	zatm_vcc = FUNC2(vcc);
	if (!zatm_vcc->rx_chan) return 0;
	FUNC4(&zatm_dev->lock, flags);
	/* should also handle VPI @@@ */
	pos = vcc->vci >> 1;
	shift = (1-(vcc->vci & 1)) << 4;
	FUNC7(zatm_dev,(FUNC6(zatm_dev,pos) & ~(0xffff << shift)) |
	    ((zatm_vcc->rx_chan | uPD98401_RXLT_ENBL) << shift),pos);
	FUNC5(&zatm_dev->lock, flags);
	return 0;
}