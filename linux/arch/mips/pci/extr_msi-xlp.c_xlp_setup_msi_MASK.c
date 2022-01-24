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
typedef  int uint64_t ;
struct xlp_msi_data {unsigned int msi_alloc_mask; int /*<<< orphan*/  msi_lock; } ;
struct msi_msg {int address_hi; int address_lo; int data; } ;
struct msi_desc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  picbase; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int XLP_MSIVEC_PER_LINK ; 
 scalar_t__ FUNC4 () ; 
 int FUNC5 (unsigned int) ; 
 struct xlp_msi_data* FUNC6 (int) ; 
 int FUNC7 (int,struct msi_desc*) ; 
 TYPE_1__* FUNC8 (int) ; 
 int FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int,int,int,int) ; 
 int FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int,struct msi_msg*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (int,int,int) ; 

__attribute__((used)) static int FUNC18(uint64_t lnkbase, int node, int link,
	struct msi_desc *desc)
{
	struct xlp_msi_data *md;
	struct msi_msg msg;
	unsigned long flags;
	int msivec, irt, lirq, xirq, ret;
	uint64_t msiaddr;

	/* Get MSI data for the link */
	lirq = FUNC3(link);
	xirq = FUNC9(node, FUNC10(link, 0));
	md = FUNC6(xirq);
	msiaddr = FUNC0(node, link);

	FUNC15(&md->msi_lock, flags);
	if (md->msi_alloc_mask == 0) {
		FUNC17(lnkbase, lirq, msiaddr);
		/* switch the link IRQ to MSI range */
		if (FUNC4())
			irt = FUNC1(link);
		else
			irt = FUNC2(link);
		FUNC12(node, lirq, lirq, irt);
		FUNC11(FUNC8(node)->picbase, irt, lirq,
				 node * FUNC13(), 1 /*en */);
	}

	/* allocate a MSI vec, and tell the bridge about it */
	msivec = FUNC5(md->msi_alloc_mask);
	if (msivec == XLP_MSIVEC_PER_LINK) {
		FUNC16(&md->msi_lock, flags);
		return -ENOMEM;
	}
	md->msi_alloc_mask |= (1u << msivec);
	FUNC16(&md->msi_lock, flags);

	msg.address_hi = msiaddr >> 32;
	msg.address_lo = msiaddr & 0xffffffff;
	msg.data = 0xc00 | msivec;

	xirq = xirq + msivec;		/* msi mapped to global irq space */
	ret = FUNC7(xirq, desc);
	if (ret < 0)
		return ret;

	FUNC14(xirq, &msg);
	return 0;
}