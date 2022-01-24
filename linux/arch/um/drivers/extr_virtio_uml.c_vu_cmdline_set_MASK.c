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
typedef  int /*<<< orphan*/  u32 ;
struct virtio_uml_platform_data {char* socket_path; int /*<<< orphan*/  virtio_device_id; } ;
struct platform_device {int dummy; } ;
struct kernel_param {int dummy; } ;
typedef  int /*<<< orphan*/  pdata ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct platform_device*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*,int,int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,struct virtio_uml_platform_data*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,unsigned int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (char const*,char*,unsigned int*,int*,int /*<<< orphan*/ *,int*) ; 
 char* FUNC9 (char const*,char) ; 
 int /*<<< orphan*/  vu_cmdline_id ; 
 int /*<<< orphan*/  vu_cmdline_parent ; 
 int vu_cmdline_parent_registered ; 

__attribute__((used)) static int FUNC10(const char *device, const struct kernel_param *kp)
{
	const char *ids = FUNC9(device, ':');
	unsigned int virtio_device_id;
	int processed, consumed, err;
	char *socket_path;
	struct virtio_uml_platform_data pdata;
	struct platform_device *pdev;

	if (!ids || ids == device)
		return -EINVAL;

	processed = FUNC8(ids, ":%u%n:%d%n",
			   &virtio_device_id, &consumed,
			   &vu_cmdline_id, &consumed);

	if (processed < 1 || ids[consumed])
		return -EINVAL;

	if (!vu_cmdline_parent_registered) {
		err = FUNC1(&vu_cmdline_parent);
		if (err) {
			FUNC5("Failed to register parent device!\n");
			FUNC7(&vu_cmdline_parent);
			return err;
		}
		vu_cmdline_parent_registered = true;
	}

	socket_path = FUNC3(device, ids - device, GFP_KERNEL);
	if (!socket_path)
		return -ENOMEM;

	pdata.virtio_device_id = (u32) virtio_device_id;
	pdata.socket_path = socket_path;

	FUNC6("Registering device virtio-uml.%d id=%d at %s\n",
		vu_cmdline_id, virtio_device_id, socket_path);

	pdev = FUNC4(&vu_cmdline_parent, "virtio-uml",
					     vu_cmdline_id++, &pdata,
					     sizeof(pdata));
	err = FUNC0(pdev);
	if (err)
		goto free;
	return 0;

free:
	FUNC2(socket_path);
	return err;
}