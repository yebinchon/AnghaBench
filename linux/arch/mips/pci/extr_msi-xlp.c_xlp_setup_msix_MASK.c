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
typedef  int uint64_t ;
struct xlp_msi_data {unsigned int msix_alloc_mask; int /*<<< orphan*/  msi_lock; } ;
struct msi_msg {int address_hi; int address_lo; int data; } ;
struct msi_desc {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int) ; 
 int XLP_MSIXVEC_PER_LINK ; 
 int FUNC2 (unsigned int) ; 
 struct xlp_msi_data* FUNC3 (int) ; 
 int FUNC4 (int,struct msi_desc*) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,struct msi_msg*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int,int,int) ; 

__attribute__((used)) static int FUNC12(uint64_t lnkbase, int node, int link,
	struct msi_desc *desc)
{
	struct xlp_msi_data *md;
	struct msi_msg msg;
	unsigned long flags;
	int t, msixvec, lirq, xirq, ret;
	uint64_t msixaddr;

	/* Get MSI data for the link */
	lirq = FUNC1(link);
	xirq = FUNC6(node, FUNC7(link, 0));
	md = FUNC3(xirq);
	msixaddr = FUNC0(node, link);

	FUNC9(&md->msi_lock, flags);
	/* switch the PCIe link to MSI-X mode at the first alloc */
	if (md->msix_alloc_mask == 0)
		FUNC11(lnkbase, lirq, msixaddr);

	/* allocate a MSI-X vec, and tell the bridge about it */
	t = FUNC2(md->msix_alloc_mask);
	if (t == XLP_MSIXVEC_PER_LINK) {
		FUNC10(&md->msi_lock, flags);
		return -ENOMEM;
	}
	md->msix_alloc_mask |= (1u << t);
	FUNC10(&md->msi_lock, flags);

	xirq += t;
	msixvec = FUNC5(xirq);

	msg.address_hi = msixaddr >> 32;
	msg.address_lo = msixaddr & 0xffffffff;
	msg.data = 0xc00 | msixvec;

	ret = FUNC4(xirq, desc);
	if (ret < 0)
		return ret;

	FUNC8(xirq, &msg);
	return 0;
}