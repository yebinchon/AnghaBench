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
struct zatm_vcc {int tx_chan; int shaper; } ;
struct zatm_dev {struct atm_vcc** tx_map; int /*<<< orphan*/  lock; } ;
struct atm_vcc {int vpi; int vci; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int VC_SIZE ; 
 struct zatm_dev* FUNC1 (int /*<<< orphan*/ ) ; 
 struct zatm_vcc* FUNC2 (struct atm_vcc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int uPD98401_TXVC_L ; 
 int uPD98401_TXVC_SHP_SHIFT ; 
 int uPD98401_TXVC_VPI_SHIFT ; 
 int /*<<< orphan*/  FUNC5 (struct zatm_dev*,int,int) ; 

__attribute__((used)) static int FUNC6(struct atm_vcc *vcc)
{
	struct zatm_dev *zatm_dev;
	struct zatm_vcc *zatm_vcc;
	unsigned long flags;

	FUNC0("open_tx_second\n");
	zatm_dev = FUNC1(vcc->dev);
	zatm_vcc = FUNC2(vcc);
	if (!zatm_vcc->tx_chan) return 0;
	/* set up VC descriptor */
	FUNC3(&zatm_dev->lock, flags);
	FUNC5(zatm_dev,0,zatm_vcc->tx_chan*VC_SIZE/4);
	FUNC5(zatm_dev,uPD98401_TXVC_L | (zatm_vcc->shaper <<
	    uPD98401_TXVC_SHP_SHIFT) | (vcc->vpi << uPD98401_TXVC_VPI_SHIFT) |
	    vcc->vci,zatm_vcc->tx_chan*VC_SIZE/4+1);
	FUNC5(zatm_dev,0,zatm_vcc->tx_chan*VC_SIZE/4+2);
	FUNC4(&zatm_dev->lock, flags);
	zatm_dev->tx_map[zatm_vcc->tx_chan] = vcc;
	return 0;
}