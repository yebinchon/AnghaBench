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
struct block_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  runtime_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  NBD_RT_HAS_CONFIG_REF ; 
 int /*<<< orphan*/  FUNC0 (struct block_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct nbd_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct nbd_device*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct nbd_device *nbd,
				 struct block_device *bdev)
{
	FUNC3(nbd);
	FUNC0(bdev, true);
	FUNC1(bdev);
	if (FUNC4(NBD_RT_HAS_CONFIG_REF,
			       &nbd->config->runtime_flags))
		FUNC2(nbd);
}