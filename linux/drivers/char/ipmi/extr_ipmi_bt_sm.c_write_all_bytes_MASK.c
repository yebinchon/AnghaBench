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
struct si_sm_data {int write_count; int /*<<< orphan*/ * write_data; int /*<<< orphan*/  seq; TYPE_1__* io; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BT_DEBUG_MSG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int bt_debug ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static inline void FUNC3(struct si_sm_data *bt)
{
	int i;

	if (bt_debug & BT_DEBUG_MSG) {
		FUNC1(bt->io->dev, "write %d bytes seq=0x%02X",
			bt->write_count, bt->seq);
		for (i = 0; i < bt->write_count; i++)
			FUNC2(" %02x", bt->write_data[i]);
		FUNC2("\n");
	}
	for (i = 0; i < bt->write_count; i++)
		FUNC0(bt->write_data[i]);
}