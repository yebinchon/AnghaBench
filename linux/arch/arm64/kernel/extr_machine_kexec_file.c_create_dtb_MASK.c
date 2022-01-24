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

/* Variables and functions */
 size_t DTB_EXTRA_SPACE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  initial_boot_params ; 
 int FUNC3 (struct kimage*,unsigned long,unsigned long,char*,void*) ; 
 size_t FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 void* FUNC6 (size_t) ; 

__attribute__((used)) static int FUNC7(struct kimage *image,
		      unsigned long initrd_load_addr, unsigned long initrd_len,
		      char *cmdline, void **dtb)
{
	void *buf;
	size_t buf_size;
	size_t cmdline_len;
	int ret;

	cmdline_len = cmdline ? FUNC4(cmdline) : 0;
	buf_size = FUNC2(initial_boot_params)
			+ cmdline_len + DTB_EXTRA_SPACE;

	for (;;) {
		buf = FUNC6(buf_size);
		if (!buf)
			return -ENOMEM;

		/* duplicate a device tree blob */
		ret = FUNC0(initial_boot_params, buf, buf_size);
		if (ret)
			return -EINVAL;

		ret = FUNC3(image, initrd_load_addr, initrd_len,
				cmdline, buf);
		if (ret) {
			FUNC5(buf);
			if (ret == -ENOMEM) {
				/* unlikely, but just in case */
				buf_size += DTB_EXTRA_SPACE;
				continue;
			} else {
				return ret;
			}
		}

		/* trim it */
		FUNC1(buf);
		*dtb = buf;

		return 0;
	}
}