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
typedef  scalar_t__ u16 ;
struct irq_domain {int dummy; } ;
struct device {struct device* parent; } ;
struct TYPE_3__ {scalar_t__ region_count; int /*<<< orphan*/  id; } ;
struct fsl_mc_device {int /*<<< orphan*/ * mc_io; struct device dev; int /*<<< orphan*/  mc_handle; TYPE_1__ obj_desc; TYPE_2__* regions; } ;
struct fsl_mc_bus {int /*<<< orphan*/  scan_mutex; int /*<<< orphan*/  dprc_attr; } ;
struct TYPE_4__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 scalar_t__ DPRC_MIN_VER_MAJOR ; 
 scalar_t__ DPRC_MIN_VER_MINOR ; 
 int EINVAL ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  FSL_MC_IO_ATOMIC_CONTEXT_PORTAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,scalar_t__,...) ; 
 struct irq_domain* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 scalar_t__ FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct irq_domain*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct fsl_mc_device*) ; 
 int FUNC11 (struct fsl_mc_device*) ; 
 int FUNC12 (struct device*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (struct device*,struct irq_domain**) ; 
 int /*<<< orphan*/  FUNC15 (struct fsl_mc_device*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 size_t FUNC17 (TYPE_2__*) ; 
 struct fsl_mc_bus* FUNC18 (struct fsl_mc_device*) ; 

__attribute__((used)) static int FUNC19(struct fsl_mc_device *mc_dev)
{
	int error;
	size_t region_size;
	struct device *parent_dev = mc_dev->dev.parent;
	struct fsl_mc_bus *mc_bus = FUNC18(mc_dev);
	bool mc_io_created = false;
	bool msi_domain_set = false;
	u16 major_ver, minor_ver;

	if (!FUNC15(mc_dev))
		return -EINVAL;

	if (FUNC1(&mc_dev->dev))
		return -EINVAL;

	if (!mc_dev->mc_io) {
		/*
		 * This is a child DPRC:
		 */
		if (!FUNC3(parent_dev))
			return -EINVAL;

		if (mc_dev->obj_desc.region_count == 0)
			return -EINVAL;

		region_size = FUNC17(mc_dev->regions);

		error = FUNC12(&mc_dev->dev,
					 mc_dev->regions[0].start,
					 region_size,
					 NULL,
					 FSL_MC_IO_ATOMIC_CONTEXT_PORTAL,
					 &mc_dev->mc_io);
		if (error < 0)
			return error;

		mc_io_created = true;

		/*
		 * Inherit parent MSI domain:
		 */
		FUNC4(&mc_dev->dev,
				   FUNC1(parent_dev));
		msi_domain_set = true;
	} else {
		/*
		 * This is a root DPRC
		 */
		struct irq_domain *mc_msi_domain;

		if (FUNC3(parent_dev))
			return -EINVAL;

		error = FUNC14(parent_dev,
					       &mc_msi_domain);
		if (error < 0) {
			FUNC5(&mc_dev->dev,
				 "WARNING: MC bus without interrupt support\n");
		} else {
			FUNC4(&mc_dev->dev, mc_msi_domain);
			msi_domain_set = true;
		}
	}

	error = FUNC9(mc_dev->mc_io, 0, mc_dev->obj_desc.id,
			  &mc_dev->mc_handle);
	if (error < 0) {
		FUNC0(&mc_dev->dev, "dprc_open() failed: %d\n", error);
		goto error_cleanup_msi_domain;
	}

	error = FUNC8(mc_dev->mc_io, 0, mc_dev->mc_handle,
				    &mc_bus->dprc_attr);
	if (error < 0) {
		FUNC0(&mc_dev->dev, "dprc_get_attributes() failed: %d\n",
			error);
		goto error_cleanup_open;
	}

	error = FUNC7(mc_dev->mc_io, 0,
				     &major_ver,
				     &minor_ver);
	if (error < 0) {
		FUNC0(&mc_dev->dev, "dprc_get_api_version() failed: %d\n",
			error);
		goto error_cleanup_open;
	}

	if (major_ver < DPRC_MIN_VER_MAJOR ||
	    (major_ver == DPRC_MIN_VER_MAJOR &&
	     minor_ver < DPRC_MIN_VER_MINOR)) {
		FUNC0(&mc_dev->dev,
			"ERROR: DPRC version %d.%d not supported\n",
			major_ver, minor_ver);
		error = -ENOTSUPP;
		goto error_cleanup_open;
	}

	FUNC16(&mc_bus->scan_mutex);

	/*
	 * Discover MC objects in DPRC object:
	 */
	error = FUNC10(mc_dev);
	if (error < 0)
		goto error_cleanup_open;

	/*
	 * Configure interrupt for the DPRC object associated with this MC bus:
	 */
	error = FUNC11(mc_dev);
	if (error < 0)
		goto error_cleanup_open;

	FUNC2(&mc_dev->dev, "DPRC device bound to driver");
	return 0;

error_cleanup_open:
	(void)FUNC6(mc_dev->mc_io, 0, mc_dev->mc_handle);

error_cleanup_msi_domain:
	if (msi_domain_set)
		FUNC4(&mc_dev->dev, NULL);

	if (mc_io_created) {
		FUNC13(mc_dev->mc_io);
		mc_dev->mc_io = NULL;
	}

	return error;
}