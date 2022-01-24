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
typedef  int /*<<< orphan*/  vq_callback_t ;
typedef  int /*<<< orphan*/  u64 ;
struct virtqueue {struct virtio_uml_vq_info* priv; } ;
struct virtio_uml_vq_info {int kick_fd; int call_fd; int /*<<< orphan*/  name; } ;
struct virtio_uml_device {struct platform_device* pdev; } ;
struct virtio_device {int dummy; } ;
struct platform_device {char* name; int id; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct virtqueue* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_SUPPORTED_QUEUE_SIZE ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  VIRTIO_IRQ ; 
 int /*<<< orphan*/  FUNC1 (struct virtio_uml_vq_info*) ; 
 struct virtio_uml_vq_info* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*,char*,int,char const*) ; 
 struct virtio_uml_device* FUNC6 (struct virtio_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct virtqueue*) ; 
 int FUNC8 (struct virtio_uml_device*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct virtio_uml_device*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct virtio_uml_device*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC12 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC13 (struct virtqueue*) ; 
 int FUNC14 (struct virtqueue*) ; 
 struct virtqueue* FUNC15 (unsigned int,int,int /*<<< orphan*/ ,struct virtio_device*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct virtqueue*) ; 
 int /*<<< orphan*/  vu_notify ; 
 int FUNC17 (struct virtio_uml_device*,struct virtqueue*) ; 

__attribute__((used)) static struct virtqueue *FUNC18(struct virtio_device *vdev,
				     unsigned index, vq_callback_t *callback,
				     const char *name, bool ctx)
{
	struct virtio_uml_device *vu_dev = FUNC6(vdev);
	struct platform_device *pdev = vu_dev->pdev;
	struct virtio_uml_vq_info *info;
	struct virtqueue *vq;
	int num = MAX_SUPPORTED_QUEUE_SIZE;
	int rc;

	info = FUNC2(sizeof(*info), GFP_KERNEL);
	if (!info) {
		rc = -ENOMEM;
		goto error_kzalloc;
	}
	FUNC5(info->name, sizeof(info->name), "%s.%d-%s", pdev->name,
		 pdev->id, name);

	vq = FUNC15(index, num, PAGE_SIZE, vdev, true, true,
				    ctx, vu_notify, callback, info->name);
	if (!vq) {
		rc = -ENOMEM;
		goto error_create;
	}
	vq->priv = info;
	num = FUNC14(vq);

	rc = FUNC4(0, 0);
	if (rc < 0)
		goto error_kick;
	info->kick_fd = rc;

	rc = FUNC17(vu_dev, vq);
	if (rc)
		goto error_call;

	rc = FUNC10(vu_dev, index, num);
	if (rc)
		goto error_setup;

	rc = FUNC9(vu_dev, index, 0);
	if (rc)
		goto error_setup;

	rc = FUNC8(vu_dev, index,
				       FUNC12(vq),
				       FUNC13(vq),
				       FUNC11(vq),
				       (u64) -1);
	if (rc)
		goto error_setup;

	return vq;

error_setup:
	FUNC7(VIRTIO_IRQ, vq);
	FUNC3(info->call_fd);
error_call:
	FUNC3(info->kick_fd);
error_kick:
	FUNC16(vq);
error_create:
	FUNC1(info);
error_kzalloc:
	return FUNC0(rc);
}