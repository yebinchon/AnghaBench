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
typedef  int u32 ;
struct rpi_firmware {int dummy; } ;
struct raspberrypi_firmware_prop {int /*<<< orphan*/  val; int /*<<< orphan*/  disable_turbo; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rpi_firmware*,int,struct raspberrypi_firmware_prop*,int) ; 

__attribute__((used)) static int FUNC3(struct rpi_firmware *firmware, u32 tag,
				      u32 clk, u32 *val)
{
	struct raspberrypi_firmware_prop msg = {
		.id = FUNC0(clk),
		.val = FUNC0(*val),
		.disable_turbo = FUNC0(1),
	};
	int ret;

	ret = FUNC2(firmware, tag, &msg, sizeof(msg));
	if (ret)
		return ret;

	*val = FUNC1(msg.val);

	return 0;
}