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
struct kimage {unsigned long nr_segments; int /*<<< orphan*/  cmdline_buf; scalar_t__ cmdline_buf_len; scalar_t__ file_mode; int /*<<< orphan*/  head; int /*<<< orphan*/  start; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kimage const*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void FUNC2(const struct kimage *kimage)
{
	unsigned long i;

	FUNC1("kexec kimage info:\n");
	FUNC1("  type:        %d\n", kimage->type);
	FUNC1("  start:       %lx\n", kimage->start);
	FUNC1("  head:        %lx\n", kimage->head);
	FUNC1("  nr_segments: %lu\n", kimage->nr_segments);

	for (i = 0; i < kimage->nr_segments; i++)
		FUNC0(kimage, i);

#ifdef CONFIG_KEXEC_FILE
	if (kimage->file_mode) {
		pr_debug("cmdline: %.*s\n", (int)kimage->cmdline_buf_len,
			 kimage->cmdline_buf);
	}
#endif
}