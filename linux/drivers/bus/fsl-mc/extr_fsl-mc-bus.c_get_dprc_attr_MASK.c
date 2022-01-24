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
typedef  int /*<<< orphan*/  u16 ;
struct fsl_mc_io {int /*<<< orphan*/  dev; } ;
struct dprc_attributes {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct fsl_mc_io*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct fsl_mc_io*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dprc_attributes*) ; 
 int FUNC3 (struct fsl_mc_io*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct dprc_attributes*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct fsl_mc_io *mc_io,
			 int container_id, struct dprc_attributes *attr)
{
	u16 dprc_handle;
	int error;

	error = FUNC3(mc_io, 0, container_id, &dprc_handle);
	if (error < 0) {
		FUNC0(mc_io->dev, "dprc_open() failed: %d\n", error);
		return error;
	}

	FUNC4(attr, 0, sizeof(struct dprc_attributes));
	error = FUNC2(mc_io, 0, dprc_handle, attr);
	if (error < 0) {
		FUNC0(mc_io->dev, "dprc_get_attributes() failed: %d\n",
			error);
		goto common_cleanup;
	}

	error = 0;

common_cleanup:
	(void)FUNC1(mc_io, 0, dprc_handle);
	return error;
}