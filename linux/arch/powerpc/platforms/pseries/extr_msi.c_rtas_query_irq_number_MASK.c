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
typedef  int u32 ;
struct pci_dn {TYPE_1__* phb; int /*<<< orphan*/  devfn; int /*<<< orphan*/  busno; } ;
struct TYPE_2__ {unsigned long buid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  query_token ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct pci_dn *pdn, int offset)
{
	u32 addr, rtas_ret[2];
	unsigned long buid;
	int rc;

	addr = FUNC5(pdn->busno, pdn->devfn, 0);
	buid = pdn->phb->buid;

	do {
		rc = FUNC4(query_token, 4, 3, rtas_ret, addr,
			       FUNC0(buid), FUNC1(buid), offset);
	} while (FUNC3(rc));

	if (rc) {
		FUNC2("rtas_msi: error (%d) querying source number\n", rc);
		return rc;
	}

	return rtas_ret[0];
}