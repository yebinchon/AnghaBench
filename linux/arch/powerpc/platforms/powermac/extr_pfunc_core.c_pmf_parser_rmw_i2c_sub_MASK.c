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
 int /*<<< orphan*/  FUNC0 (char*,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct pmf_cmd*,struct pmf_handlers*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*,void const*) ; 
 int /*<<< orphan*/  FUNC3 (struct pmf_cmd*) ; 
 void* FUNC4 (struct pmf_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rmw_i2c_sub ; 

__attribute__((used)) static int FUNC5(struct pmf_cmd *cmd, struct pmf_handlers *h)
{
	u8 subaddr = (u8)FUNC3(cmd);
	u32 maskbytes = FUNC3(cmd);
	u32 valuesbytes = FUNC3(cmd);
	u32 totalbytes = FUNC3(cmd);
	const void *maskblob = FUNC4(cmd, maskbytes);
	const void *valuesblob = FUNC4(cmd, valuesbytes);

	FUNC1("pmf: rmw_i2c_sub(subaddr: %x, maskbytes: %ud, valuebytes: %ud"
		  ", totalbytes: %d) ...\n",
		  subaddr, maskbytes, valuesbytes, totalbytes);
	FUNC0("pmf:   mask data: \n", maskblob, maskbytes);
	FUNC0("pmf:   values data: \n", valuesblob, valuesbytes);

	FUNC2(rmw_i2c_sub, cmd, h, subaddr, maskbytes, valuesbytes,
		       totalbytes, maskblob, valuesblob);
}