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

/* Variables and functions */
 int /*<<< orphan*/  MAX_PROP_LEN ; 
 int /*<<< orphan*/  FUNC0 (void*,scalar_t__*,int,unsigned long*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (void*,char*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__* prop_buf ; 

u32 *FUNC4(void)
{
	void *soc;
	unsigned long ret = 0;

	soc = FUNC1(NULL, "soc");
	if (soc) {
		int size;
		u32 naddr;

		size = FUNC2(soc, "#address-cells", prop_buf, MAX_PROP_LEN);
		if (size == 4)
			naddr = prop_buf[0];
		else
			naddr = 2;

		if (naddr != 1 && naddr != 2)
			goto err;

		size = FUNC2(soc, "ranges", prop_buf, MAX_PROP_LEN);

		if (size < 12)
			goto err;
		if (prop_buf[0] != 0)
			goto err;
		if (naddr == 2 && prop_buf[1] != 0)
			goto err;

		if (!FUNC0(soc, prop_buf + naddr, 8, &ret))
			ret = 0;
	}

err:
	if (!ret)
		FUNC3("fsl_get_immr: Failed to find immr base\r\n");

	return (u32 *)ret;
}