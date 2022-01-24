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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct pmf_handlers {int dummy; } ;
struct pmf_cmd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct pmf_cmd*,struct pmf_handlers*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pmf_cmd*) ; 
 int /*<<< orphan*/  read_i2c_sub ; 

__attribute__((used)) static int FUNC3(struct pmf_cmd *cmd, struct pmf_handlers *h)
{
	u8 subaddr = (u8)FUNC2(cmd);
	u32 bytes = FUNC2(cmd);

	FUNC0("pmf: read_i2c_sub(subaddr: %x, bytes: %ud)\n",
		  subaddr, bytes);

	FUNC1(read_i2c_sub, cmd, h, subaddr, bytes);
}