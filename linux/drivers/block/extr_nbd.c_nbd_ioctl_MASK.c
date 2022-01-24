#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nbd_device {int /*<<< orphan*/  config_lock; struct nbd_config* config; } ;
struct nbd_config {int /*<<< orphan*/  runtime_flags; } ;
struct block_device {TYPE_1__* bd_disk; } ;
typedef  int /*<<< orphan*/  fmode_t ;
struct TYPE_2__ {struct nbd_device* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EINVAL ; 
 int EPERM ; 
 unsigned int NBD_CLEAR_SOCK ; 
 unsigned int NBD_DISCONNECT ; 
 int /*<<< orphan*/  NBD_RT_BOUND ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (struct block_device*,struct nbd_device*,unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct nbd_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct block_device *bdev, fmode_t mode,
		     unsigned int cmd, unsigned long arg)
{
	struct nbd_device *nbd = bdev->bd_disk->private_data;
	struct nbd_config *config = nbd->config;
	int error = -EINVAL;

	if (!FUNC2(CAP_SYS_ADMIN))
		return -EPERM;

	/* The block layer will pass back some non-nbd ioctls in case we have
	 * special handling for them, but we don't so just return an error.
	 */
	if (FUNC0(cmd) != 0xab)
		return -EINVAL;

	FUNC4(&nbd->config_lock);

	/* Don't allow ioctl operations on a nbd device that was created with
	 * netlink, unless it's DISCONNECT or CLEAR_SOCK, which are fine.
	 */
	if (!FUNC7(NBD_RT_BOUND, &config->runtime_flags) ||
	    (cmd == NBD_DISCONNECT || cmd == NBD_CLEAR_SOCK))
		error = FUNC1(bdev, nbd, cmd, arg);
	else
		FUNC3(FUNC6(nbd), "Cannot use ioctl interface on a netlink controlled device.\n");
	FUNC5(&nbd->config_lock);
	return error;
}