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
typedef  int uint64_t ;
struct virtqueue {struct virtio_uml_vq_info* priv; } ;
struct virtio_uml_vq_info {int /*<<< orphan*/  kick_fd; } ;
typedef  int /*<<< orphan*/  n ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int const*,int) ; 

__attribute__((used)) static bool FUNC2(struct virtqueue *vq)
{
	struct virtio_uml_vq_info *info = vq->priv;
	const uint64_t n = 1;
	int rc;

	do {
		rc = FUNC1(info->kick_fd, &n, sizeof(n));
	} while (rc == -EINTR);
	return !FUNC0(rc != sizeof(n), "write returned %d\n", rc);
}