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
struct drbd_device {int dummy; } ;
struct bio {int /*<<< orphan*/  bi_status; int /*<<< orphan*/  bi_disk; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct drbd_device*,char*) ; 
 scalar_t__ FUNC4 (struct drbd_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*) ; 
 int /*<<< orphan*/  local ; 

__attribute__((used)) static inline void FUNC6(struct drbd_device *device,
					     int fault_type, struct bio *bio)
{
	FUNC0(local);
	if (!bio->bi_disk) {
		FUNC3(device, "drbd_generic_make_request: bio->bi_disk == NULL\n");
		bio->bi_status = BLK_STS_IOERR;
		FUNC1(bio);
		return;
	}

	if (FUNC4(device, fault_type))
		FUNC2(bio);
	else
		FUNC5(bio);
}