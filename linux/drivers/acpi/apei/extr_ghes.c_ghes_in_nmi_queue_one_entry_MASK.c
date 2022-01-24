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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct ghes_estatus_node {int /*<<< orphan*/  llnode; int /*<<< orphan*/  generic; struct ghes* ghes; } ;
struct ghes {int /*<<< orphan*/  generic; } ;
struct acpi_hest_generic_status {int /*<<< orphan*/  error_severity; } ;
typedef  enum fixed_addresses { ____Placeholder_fixed_addresses } fixed_addresses ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_ARCH_HAVE_NMI_SAFE_CMPXCHG ; 
 int ENOENT ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 struct acpi_hest_generic_status* FUNC0 (struct ghes_estatus_node*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int GHES_SEV_PANIC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ghes*,struct acpi_hest_generic_status*) ; 
 int /*<<< orphan*/  FUNC4 (struct ghes*,struct acpi_hest_generic_status*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct ghes*,struct acpi_hest_generic_status*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (struct acpi_hest_generic_status*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct acpi_hest_generic_status*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ghes*,struct acpi_hest_generic_status*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (struct acpi_hest_generic_status*) ; 
 int /*<<< orphan*/  ghes_estatus_llist ; 
 int /*<<< orphan*/  ghes_estatus_pool ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct ghes *ghes,
				       enum fixed_addresses fixmap_idx)
{
	struct acpi_hest_generic_status *estatus, tmp_header;
	struct ghes_estatus_node *estatus_node;
	u32 len, node_len;
	u64 buf_paddr;
	int sev, rc;

	if (!FUNC2(CONFIG_ARCH_HAVE_NMI_SAFE_CMPXCHG))
		return -EOPNOTSUPP;

	rc = FUNC5(ghes, &tmp_header, &buf_paddr, fixmap_idx);
	if (rc) {
		FUNC10(ghes, &tmp_header, buf_paddr, fixmap_idx);
		return rc;
	}

	rc = FUNC3(ghes, &tmp_header);
	if (rc) {
		FUNC10(ghes, &tmp_header, buf_paddr, fixmap_idx);
		return rc;
	}

	len = FUNC7(&tmp_header);
	node_len = FUNC1(len);
	estatus_node = (void *)FUNC8(ghes_estatus_pool, node_len);
	if (!estatus_node)
		return -ENOMEM;

	estatus_node->ghes = ghes;
	estatus_node->generic = ghes->generic;
	estatus = FUNC0(estatus_node);

	if (FUNC6(estatus, buf_paddr, fixmap_idx, len)) {
		FUNC10(ghes, estatus, buf_paddr, fixmap_idx);
		rc = -ENOENT;
		goto no_work;
	}

	sev = FUNC13(estatus->error_severity);
	if (sev >= GHES_SEV_PANIC) {
		FUNC12();
		FUNC4(ghes, estatus, buf_paddr, fixmap_idx);
	}

	FUNC10(ghes, &tmp_header, buf_paddr, fixmap_idx);

	/* This error has been reported before, don't process it again. */
	if (FUNC11(estatus))
		goto no_work;

	FUNC14(&estatus_node->llnode, &ghes_estatus_llist);

	return rc;

no_work:
	FUNC9(ghes_estatus_pool, (unsigned long)estatus_node,
		      node_len);

	return rc;
}