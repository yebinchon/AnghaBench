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
struct block_device {int dummy; } ;
struct bio {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  REQ_OP_ZONE_RESET_ALL ; 
 struct bio* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,struct block_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct bio*) ; 

__attribute__((used)) static int FUNC5(struct block_device *bdev, gfp_t gfp_mask)
{
	struct bio *bio = FUNC0(gfp_mask, 0);
	int ret;

	/* across the zones operations, don't need any sectors */
	FUNC2(bio, bdev);
	FUNC3(bio, REQ_OP_ZONE_RESET_ALL, 0);

	ret = FUNC4(bio);
	FUNC1(bio);

	return ret;
}