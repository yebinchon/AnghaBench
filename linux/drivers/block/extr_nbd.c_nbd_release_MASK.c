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
struct nbd_device {TYPE_1__* config; } ;
struct gendisk {struct nbd_device* private_data; } ;
struct block_device {scalar_t__ bd_openers; } ;
typedef  int /*<<< orphan*/  fmode_t ;
struct TYPE_2__ {int /*<<< orphan*/  runtime_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  NBD_RT_DISCONNECT_ON_CLOSE ; 
 struct block_device* FUNC0 (struct gendisk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nbd_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct nbd_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct nbd_device*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct gendisk *disk, fmode_t mode)
{
	struct nbd_device *nbd = disk->private_data;
	struct block_device *bdev = FUNC0(disk, 0);

	if (FUNC4(NBD_RT_DISCONNECT_ON_CLOSE, &nbd->config->runtime_flags) &&
			bdev->bd_openers == 0)
		FUNC2(nbd);

	FUNC1(nbd);
	FUNC3(nbd);
}