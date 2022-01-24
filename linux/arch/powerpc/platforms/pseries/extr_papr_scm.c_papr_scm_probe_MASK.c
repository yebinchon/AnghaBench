#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uuid_t ;
typedef  void* u64 ;
typedef  void* u32 ;
struct TYPE_6__ {struct device_node* of_node; } ;
struct platform_device {int /*<<< orphan*/  name; TYPE_3__ dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  name; scalar_t__ end; scalar_t__ start; } ;
struct TYPE_4__ {void* cookie2; void* cookie1; } ;
struct papr_scm_priv {int block_size; int blocks; int is_volatile; TYPE_2__ res; scalar_t__ bound_addr; struct platform_device* pdev; void* metadata_size; TYPE_1__ nd_set; void* drc_index; struct device_node* dn; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int H_OVERLAP ; 
 int H_SUCCESS ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 void* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*,int) ; 
 int FUNC2 (struct papr_scm_priv*) ; 
 int FUNC3 (struct papr_scm_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct papr_scm_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct papr_scm_priv*) ; 
 struct papr_scm_priv* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*,char*) ; 
 scalar_t__ FUNC8 (struct device_node*,char*,char const**) ; 
 scalar_t__ FUNC9 (struct device_node*,char*,void**) ; 
 scalar_t__ FUNC10 (struct device_node*,char*,void**) ; 
 int FUNC11 (struct papr_scm_priv*) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct papr_scm_priv*) ; 
 int /*<<< orphan*/  FUNC13 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct device_node *dn = pdev->dev.of_node;
	u32 drc_index, metadata_size;
	u64 blocks, block_size;
	struct papr_scm_priv *p;
	const char *uuid_str;
	u64 uuid[2];
	int rc;

	/* check we have all the required DT properties */
	if (FUNC9(dn, "ibm,my-drc-index", &drc_index)) {
		FUNC1(&pdev->dev, "%pOF: missing drc-index!\n", dn);
		return -ENODEV;
	}

	if (FUNC10(dn, "ibm,block-size", &block_size)) {
		FUNC1(&pdev->dev, "%pOF: missing block-size!\n", dn);
		return -ENODEV;
	}

	if (FUNC10(dn, "ibm,number-of-blocks", &blocks)) {
		FUNC1(&pdev->dev, "%pOF: missing number-of-blocks!\n", dn);
		return -ENODEV;
	}

	if (FUNC8(dn, "ibm,unit-guid", &uuid_str)) {
		FUNC1(&pdev->dev, "%pOF: missing unit-guid!\n", dn);
		return -ENODEV;
	}


	p = FUNC6(sizeof(*p), GFP_KERNEL);
	if (!p)
		return -ENOMEM;

	/* optional DT properties */
	FUNC9(dn, "ibm,metadata-size", &metadata_size);

	p->dn = dn;
	p->drc_index = drc_index;
	p->block_size = block_size;
	p->blocks = blocks;
	p->is_volatile = !FUNC7(dn, "ibm,cache-flush-required");

	/* We just need to ensure that set cookies are unique across */
	FUNC13(uuid_str, (uuid_t *) uuid);
	/*
	 * cookie1 and cookie2 are not really little endian
	 * we store a little endian representation of the
	 * uuid str so that we can compare this with the label
	 * area cookie irrespective of the endian config with which
	 * the kernel is built.
	 */
	p->nd_set.cookie1 = FUNC0(uuid[0]);
	p->nd_set.cookie2 = FUNC0(uuid[1]);

	/* might be zero */
	p->metadata_size = metadata_size;
	p->pdev = pdev;

	/* request the hypervisor to bind this region to somewhere in memory */
	rc = FUNC2(p);

	/* If phyp says drc memory still bound then force unbound and retry */
	if (rc == H_OVERLAP)
		rc = FUNC3(p);

	if (rc != H_SUCCESS) {
		FUNC1(&p->pdev->dev, "bind err: %d\n", rc);
		rc = -ENXIO;
		goto err;
	}

	/* setup the resource for the newly bound range */
	p->res.start = p->bound_addr;
	p->res.end   = p->bound_addr + p->blocks * p->block_size - 1;
	p->res.name  = pdev->name;
	p->res.flags = IORESOURCE_MEM;

	rc = FUNC11(p);
	if (rc)
		goto err2;

	FUNC12(pdev, p);

	return 0;

err2:	FUNC4(p);
err:	FUNC5(p);
	return rc;
}