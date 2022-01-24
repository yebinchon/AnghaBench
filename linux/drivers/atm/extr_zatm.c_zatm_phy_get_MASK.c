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
struct zatm_dev {int dummy; } ;
struct atm_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CER ; 
 int /*<<< orphan*/  CMR ; 
 struct zatm_dev* FUNC0 (struct atm_dev*) ; 
 unsigned long uPD98401_IA_B0 ; 
 unsigned long uPD98401_IA_RW ; 
 unsigned long uPD98401_IA_TGT_PHY ; 
 unsigned long uPD98401_IA_TGT_SHIFT ; 
 unsigned long uPD98401_IND_ACC ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static unsigned char FUNC4(struct atm_dev *dev,unsigned long addr)
{
	struct zatm_dev *zatm_dev;

	zatm_dev = FUNC0(dev);
	FUNC3();
	FUNC2(uPD98401_IND_ACC | uPD98401_IA_B0 | uPD98401_IA_RW |
	  (uPD98401_IA_TGT_PHY << uPD98401_IA_TGT_SHIFT) | addr,CMR);
	FUNC3();
	return FUNC1(CER) & 0xff;
}