#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct nv_adma_port_priv {TYPE_1__* cpb; } ;
struct ata_eh_info {int /*<<< orphan*/  err_mask; } ;
struct TYPE_4__ {struct ata_eh_info eh_info; } ;
struct ata_port {TYPE_2__ link; struct nv_adma_port_priv* private_data; } ;
struct TYPE_3__ {int resp_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_ERR_DEV ; 
 int /*<<< orphan*/  AC_ERR_OTHER ; 
 int /*<<< orphan*/  AC_ERR_SYSTEM ; 
 int NV_CPB_RESP_ATA_ERR ; 
 int NV_CPB_RESP_CMD_ERR ; 
 int NV_CPB_RESP_CPB_ERR ; 
 int NV_CPB_RESP_DONE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_eh_info*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_eh_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct ata_eh_info*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct ata_port*) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct ata_port *ap, int cpb_num, int force_err)
{
	struct nv_adma_port_priv *pp = ap->private_data;
	u8 flags = pp->cpb[cpb_num].resp_flags;

	FUNC0("CPB %d, flags=0x%x\n", cpb_num, flags);

	if (FUNC7((force_err ||
		     flags & (NV_CPB_RESP_ATA_ERR |
			      NV_CPB_RESP_CMD_ERR |
			      NV_CPB_RESP_CPB_ERR)))) {
		struct ata_eh_info *ehi = &ap->link.eh_info;
		int freeze = 0;

		FUNC2(ehi);
		FUNC1(ehi, "CPB resp_flags 0x%x: ", flags);
		if (flags & NV_CPB_RESP_ATA_ERR) {
			FUNC3(ehi, "ATA error");
			ehi->err_mask |= AC_ERR_DEV;
		} else if (flags & NV_CPB_RESP_CMD_ERR) {
			FUNC3(ehi, "CMD error");
			ehi->err_mask |= AC_ERR_DEV;
		} else if (flags & NV_CPB_RESP_CPB_ERR) {
			FUNC3(ehi, "CPB error");
			ehi->err_mask |= AC_ERR_SYSTEM;
			freeze = 1;
		} else {
			/* notifier error, but no error in CPB flags? */
			FUNC3(ehi, "unknown");
			ehi->err_mask |= AC_ERR_OTHER;
			freeze = 1;
		}
		/* Kill all commands. EH will determine what actually failed. */
		if (freeze)
			FUNC5(ap);
		else
			FUNC4(ap);
		return -1;
	}

	if (FUNC6(flags & NV_CPB_RESP_DONE))
		return 1;
	return 0;
}