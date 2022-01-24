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
struct virtqueue {struct virtio_uml_vq_info* priv; } ;
struct virtio_uml_vq_info {int /*<<< orphan*/  kick_fd; int /*<<< orphan*/  call_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIRTIO_IRQ ; 
 int /*<<< orphan*/  FUNC0 (struct virtio_uml_vq_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC3 (struct virtqueue*) ; 

__attribute__((used)) static void FUNC4(struct virtqueue *vq)
{
	struct virtio_uml_vq_info *info = vq->priv;

	FUNC2(VIRTIO_IRQ, vq);

	FUNC1(info->call_fd);
	FUNC1(info->kick_fd);

	FUNC3(vq);
	FUNC0(info);
}