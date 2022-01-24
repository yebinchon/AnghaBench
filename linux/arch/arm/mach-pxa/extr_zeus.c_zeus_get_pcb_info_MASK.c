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
typedef  int u8 ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int,char*) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client, unsigned gpio,
			     unsigned ngpio, void *context)
{
	int i;
	u8 pcb_info = 0;

	for (i = 0; i < 8; i++) {
		int pcb_bit = gpio + i + 8;

		if (FUNC5(pcb_bit, "pcb info")) {
			FUNC0(&client->dev, "Can't request pcb info %d\n", i);
			continue;
		}

		if (FUNC2(pcb_bit)) {
			FUNC0(&client->dev, "Can't read pcb info %d\n", i);
			FUNC3(pcb_bit);
			continue;
		}

		pcb_info |= !!FUNC4(pcb_bit) << i;

		FUNC3(pcb_bit);
	}

	FUNC1(&client->dev, "Zeus PCB version %d issue %d\n",
		 pcb_info >> 4, pcb_info & 0xf);

	return 0;
}