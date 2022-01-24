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
struct rbd_spec {int /*<<< orphan*/  image_id; int /*<<< orphan*/  image_name; } ;
struct rbd_device {int image_format; int /*<<< orphan*/  header_oid; struct rbd_spec* spec; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RBD_HEADER_PREFIX ; 
 int /*<<< orphan*/  RBD_SUFFIX ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct rbd_device *rbd_dev)
{
	struct rbd_spec *spec = rbd_dev->spec;
	int ret;

	/* Record the header object name for this rbd image. */

	FUNC1(FUNC2(rbd_dev->image_format));
	if (rbd_dev->image_format == 1)
		ret = FUNC0(&rbd_dev->header_oid, GFP_KERNEL, "%s%s",
				       spec->image_name, RBD_SUFFIX);
	else
		ret = FUNC0(&rbd_dev->header_oid, GFP_KERNEL, "%s%s",
				       RBD_HEADER_PREFIX, spec->image_id);

	return ret;
}