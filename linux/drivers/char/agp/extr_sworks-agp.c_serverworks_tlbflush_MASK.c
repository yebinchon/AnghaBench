#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct agp_memory {int dummy; } ;
struct TYPE_4__ {TYPE_1__* svrwrks_dev; scalar_t__ registers; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int HZ ; 
 scalar_t__ SVWRKS_DIRFLUSH ; 
 scalar_t__ SVWRKS_POSTFLUSH ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int jiffies ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 TYPE_2__ serverworks_private ; 
 scalar_t__ FUNC4 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct agp_memory *temp)
{
	unsigned long timeout;

	FUNC5(1, serverworks_private.registers+SVWRKS_POSTFLUSH);
	timeout = jiffies + 3*HZ;
	while (FUNC2(serverworks_private.registers+SVWRKS_POSTFLUSH) == 1) {
		FUNC0();
		if (FUNC4(jiffies, timeout)) {
			FUNC1(&serverworks_private.svrwrks_dev->dev,
				"TLB post flush took more than 3 seconds\n");
			break;
		}
	}

	FUNC6(1, serverworks_private.registers+SVWRKS_DIRFLUSH);
	timeout = jiffies + 3*HZ;
	while (FUNC3(serverworks_private.registers+SVWRKS_DIRFLUSH) == 1) {
		FUNC0();
		if (FUNC4(jiffies, timeout)) {
			FUNC1(&serverworks_private.svrwrks_dev->dev,
				"TLB Dir flush took more than 3 seconds\n");
			break;
		}
	}
}