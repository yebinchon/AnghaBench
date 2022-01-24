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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct rio_priv {scalar_t__ maint_win; TYPE_1__* maint_atmu_regs; } ;
struct rio_mport {struct rio_priv* priv; } ;
struct TYPE_2__ {int rowtar; int rowtear; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int RIO_MAINT_WIN_SIZE ; 
 int /*<<< orphan*/  fsl_rio_config_lock ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC7(struct rio_mport *mport, int index, u16 destid,
			u8 hopcount, u32 offset, int len, u32 val)
{
	struct rio_priv *priv = mport->priv;
	unsigned long flags;
	u8 *data;
	int ret = 0;

	FUNC4
		("fsl_rio_config_write:"
		" index %d destid %d hopcount %d offset %8.8x len %d val %8.8x\n",
		index, destid, hopcount, offset, len, val);

	/* 16MB maintenance windows possible */
	/* allow only aligned access to maintenance registers */
	if (offset > (0x1000000 - len) || !FUNC0(offset, len))
		return -EINVAL;

	FUNC5(&fsl_rio_config_lock, flags);

	FUNC3(&priv->maint_atmu_regs->rowtar,
		 (destid << 22) | (hopcount << 12) | (offset >> 12));
	FUNC3(&priv->maint_atmu_regs->rowtear, (destid >> 10));

	data = (u8 *) priv->maint_win + (offset & (RIO_MAINT_WIN_SIZE - 1));
	switch (len) {
	case 1:
		FUNC1((u8 *) data, val);
		break;
	case 2:
		FUNC2((u16 *) data, val);
		break;
	case 4:
		FUNC3((u32 *) data, val);
		break;
	default:
		ret = -EINVAL;
	}
	FUNC6(&fsl_rio_config_lock, flags);

	return ret;
}