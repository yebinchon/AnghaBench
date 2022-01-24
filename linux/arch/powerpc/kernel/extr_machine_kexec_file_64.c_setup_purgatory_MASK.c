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
struct kimage {int dummy; } ;
typedef  int /*<<< orphan*/  kernel_load_addr ;
typedef  int /*<<< orphan*/  fdt_load_addr ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SLAVE_CODE_SIZE ; 
 int FUNC0 (struct kimage*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int*) ; 
 unsigned int* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int*,void const*,int) ; 

int FUNC4(struct kimage *image, const void *slave_code,
		    const void *fdt, unsigned long kernel_load_addr,
		    unsigned long fdt_load_addr)
{
	unsigned int *slave_code_buf, master_entry;
	int ret;

	slave_code_buf = FUNC2(SLAVE_CODE_SIZE, GFP_KERNEL);
	if (!slave_code_buf)
		return -ENOMEM;

	/* Get the slave code from the new kernel and put it in purgatory. */
	ret = FUNC0(image, "purgatory_start",
					     slave_code_buf, SLAVE_CODE_SIZE,
					     true);
	if (ret) {
		FUNC1(slave_code_buf);
		return ret;
	}

	master_entry = slave_code_buf[0];
	FUNC3(slave_code_buf, slave_code, SLAVE_CODE_SIZE);
	slave_code_buf[0] = master_entry;
	ret = FUNC0(image, "purgatory_start",
					     slave_code_buf, SLAVE_CODE_SIZE,
					     false);
	FUNC1(slave_code_buf);

	ret = FUNC0(image, "kernel", &kernel_load_addr,
					     sizeof(kernel_load_addr), false);
	if (ret)
		return ret;
	ret = FUNC0(image, "dt_offset", &fdt_load_addr,
					     sizeof(fdt_load_addr), false);
	if (ret)
		return ret;

	return 0;
}