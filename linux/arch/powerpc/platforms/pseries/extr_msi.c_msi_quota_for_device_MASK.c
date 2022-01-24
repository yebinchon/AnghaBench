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
struct pci_dev {int dummy; } ;
struct msi_counts {int num_devices; int quota; int request; int spare; int over_quota; int /*<<< orphan*/  requestor; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  count_non_bridge_devices ; 
 int /*<<< orphan*/  count_spare_msis ; 
 struct device_node* FUNC0 (struct pci_dev*,int*) ; 
 struct device_node* FUNC1 (struct pci_dev*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct msi_counts*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*,int /*<<< orphan*/ ,struct msi_counts*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct pci_dev *dev, int request)
{
	struct device_node *pe_dn;
	struct msi_counts counts;
	int total;

	FUNC8("rtas_msi: calc quota for %s, request %d\n", FUNC6(dev),
		  request);

	pe_dn = FUNC1(dev, &total);
	if (!pe_dn)
		pe_dn = FUNC0(dev, &total);

	if (!pe_dn) {
		FUNC9("rtas_msi: couldn't find PE for %s\n", FUNC6(dev));
		goto out;
	}

	FUNC8("rtas_msi: found PE %pOF\n", pe_dn);

	FUNC2(&counts, 0, sizeof(struct msi_counts));

	/* Work out how many devices we have below this PE */
	FUNC7(pe_dn, count_non_bridge_devices, &counts);

	if (counts.num_devices == 0) {
		FUNC9("rtas_msi: found 0 devices under PE for %s\n",
			FUNC6(dev));
		goto out;
	}

	counts.quota = total / counts.num_devices;
	if (request <= counts.quota)
		goto out;

	/* else, we have some more calculating to do */
	counts.requestor = FUNC5(dev);
	counts.request = request;
	FUNC7(pe_dn, count_spare_msis, &counts);

	/* If the quota isn't an integer multiple of the total, we can
	 * use the remainder as spare MSIs for anyone that wants them. */
	counts.spare += total % counts.num_devices;

	/* Divide any spare by the number of over-quota requestors */
	if (counts.over_quota)
		counts.quota += counts.spare / counts.over_quota;

	/* And finally clamp the request to the possibly adjusted quota */
	request = FUNC3(counts.quota, request);

	FUNC8("rtas_msi: request clamped to quota %d\n", request);
out:
	FUNC4(pe_dn);

	return request;
}