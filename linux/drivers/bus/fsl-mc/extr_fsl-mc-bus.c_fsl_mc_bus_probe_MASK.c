#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_7__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mc_version {int /*<<< orphan*/  revision; int /*<<< orphan*/  minor; int /*<<< orphan*/  major; } ;
struct fsl_mc_obj_desc {int id; int irq_count; scalar_t__ region_count; int /*<<< orphan*/  type; int /*<<< orphan*/  vendor; int /*<<< orphan*/  ver_minor; int /*<<< orphan*/  ver_major; } ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_device {int dummy; } ;
struct fsl_mc {struct fsl_mc_device* root_mc_bus_dev; int /*<<< orphan*/  num_translation_ranges; int /*<<< orphan*/  translation_ranges; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FSL_MC_IO_ATOMIC_CONTEXT_PORTAL ; 
 int /*<<< orphan*/  FSL_MC_VENDOR_FREESCALE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fsl_mc* FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct fsl_mc_io*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct fsl_mc_io*,int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct fsl_mc_io**) ; 
 int /*<<< orphan*/  FUNC6 (struct fsl_mc_io*) ; 
 int FUNC7 (struct fsl_mc_obj_desc*,struct fsl_mc_io*,TYPE_1__*,struct fsl_mc_device**) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct fsl_mc_io*,int /*<<< orphan*/ ,struct mc_version*) ; 
 int /*<<< orphan*/  FUNC10 (struct fsl_mc_obj_desc*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int,int /*<<< orphan*/ ,struct resource*) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct fsl_mc*) ; 
 int /*<<< orphan*/  FUNC13 (struct resource*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct fsl_mc_obj_desc obj_desc;
	int error;
	struct fsl_mc *mc;
	struct fsl_mc_device *mc_bus_dev = NULL;
	struct fsl_mc_io *mc_io = NULL;
	int container_id;
	phys_addr_t mc_portal_phys_addr;
	u32 mc_portal_size;
	struct mc_version mc_version;
	struct resource res;

	mc = FUNC2(&pdev->dev, sizeof(*mc), GFP_KERNEL);
	if (!mc)
		return -ENOMEM;

	FUNC12(pdev, mc);

	/*
	 * Get physical address of MC portal for the root DPRC:
	 */
	error = FUNC11(pdev->dev.of_node, 0, &res);
	if (error < 0) {
		FUNC0(&pdev->dev,
			"of_address_to_resource() failed for %pOF\n",
			pdev->dev.of_node);
		return error;
	}

	mc_portal_phys_addr = res.start;
	mc_portal_size = FUNC13(&res);
	error = FUNC5(&pdev->dev, mc_portal_phys_addr,
				 mc_portal_size, NULL,
				 FSL_MC_IO_ATOMIC_CONTEXT_PORTAL, &mc_io);
	if (error < 0)
		return error;

	error = FUNC9(mc_io, 0, &mc_version);
	if (error != 0) {
		FUNC0(&pdev->dev,
			"mc_get_version() failed with error %d\n", error);
		goto error_cleanup_mc_io;
	}

	FUNC1(&pdev->dev, "MC firmware version: %u.%u.%u\n",
		 mc_version.major, mc_version.minor, mc_version.revision);

	error = FUNC8(&pdev->dev,
					       &mc->translation_ranges,
					       &mc->num_translation_ranges);
	if (error < 0)
		goto error_cleanup_mc_io;

	error = FUNC4(mc_io, 0, &container_id);
	if (error < 0) {
		FUNC0(&pdev->dev,
			"dprc_get_container_id() failed: %d\n", error);
		goto error_cleanup_mc_io;
	}

	FUNC10(&obj_desc, 0, sizeof(struct fsl_mc_obj_desc));
	error = FUNC3(mc_io, 0,
				     &obj_desc.ver_major,
				     &obj_desc.ver_minor);
	if (error < 0)
		goto error_cleanup_mc_io;

	obj_desc.vendor = FSL_MC_VENDOR_FREESCALE;
	FUNC14(obj_desc.type, "dprc");
	obj_desc.id = container_id;
	obj_desc.irq_count = 1;
	obj_desc.region_count = 0;

	error = FUNC7(&obj_desc, mc_io, &pdev->dev, &mc_bus_dev);
	if (error < 0)
		goto error_cleanup_mc_io;

	mc->root_mc_bus_dev = mc_bus_dev;
	return 0;

error_cleanup_mc_io:
	FUNC6(mc_io);
	return error;
}