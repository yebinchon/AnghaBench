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
struct msi_counts {int request; int quota; int /*<<< orphan*/  over_quota; int /*<<< orphan*/  spare; struct device_node* requestor; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/ * FUNC2 (struct device_node*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *FUNC3(struct device_node *dn, void *data)
{
	struct msi_counts *counts = data;
	const __be32 *p;
	int req;

	if (dn == counts->requestor)
		req = counts->request;
	else {
		/* We don't know if a driver will try to use MSI or MSI-X,
		 * so we just have to punt and use the larger of the two. */
		req = 0;
		p = FUNC2(dn, "ibm,req#msi", NULL);
		if (p)
			req = FUNC0(p);

		p = FUNC2(dn, "ibm,req#msi-x", NULL);
		if (p)
			req = FUNC1(req, (int)FUNC0(p));
	}

	if (req < counts->quota)
		counts->spare += counts->quota - req;
	else if (req > counts->quota)
		counts->over_quota++;

	return NULL;
}