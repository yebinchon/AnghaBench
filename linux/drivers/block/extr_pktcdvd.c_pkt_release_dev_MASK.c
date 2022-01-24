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
struct pktcdvd_device {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int FMODE_EXCL ; 
 int FMODE_READ ; 
 int /*<<< orphan*/  MAX_SPEED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct pktcdvd_device*,char*) ; 
 scalar_t__ FUNC2 (struct pktcdvd_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct pktcdvd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pktcdvd_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pktcdvd_device*) ; 

__attribute__((used)) static void FUNC6(struct pktcdvd_device *pd, int flush)
{
	if (flush && FUNC2(pd))
		FUNC1(1, pd, "not flushing cache\n");

	FUNC3(pd, 0);

	FUNC4(pd, MAX_SPEED, MAX_SPEED);
	FUNC0(pd->bdev, FMODE_READ | FMODE_EXCL);

	FUNC5(pd);
}