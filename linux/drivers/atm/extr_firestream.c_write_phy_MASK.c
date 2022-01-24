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
struct fs_dev {int /*<<< orphan*/  hp_txq; } ;

/* Variables and functions */
 int QE_CMD_IMM_INQ ; 
 int QE_CMD_PRP_WR ; 
 int /*<<< orphan*/  FUNC0 (struct fs_dev*,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct fs_dev *dev, int regnum, int val)
{
	FUNC0 (dev,  &dev->hp_txq, QE_CMD_PRP_WR | QE_CMD_IMM_INQ,
			regnum, val, 0);
}