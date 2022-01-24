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
struct kimage {int dummy; } ;
struct kexec_elf_info {void* buffer; TYPE_1__* proghdrs; } ;
struct kexec_buf {int top_down; void* mem; char* buffer; unsigned long bufsz; unsigned long memsz; void* buf_align; int /*<<< orphan*/  buf_max; int /*<<< orphan*/  buf_min; struct kimage* image; } ;
struct elfhdr {int dummy; } ;
struct TYPE_2__ {int p_offset; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* KEXEC_BUF_MEM_UNKNOWN ; 
 void* PAGE_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ ,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  initial_boot_params ; 
 int FUNC4 (struct kexec_buf*) ; 
 int FUNC5 (char*,unsigned long,struct elfhdr*,struct kexec_elf_info*) ; 
 int FUNC6 (struct kimage*,struct elfhdr*,struct kexec_elf_info*,struct kexec_buf*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC7 (struct kexec_elf_info*) ; 
 int FUNC8 (struct kimage*,struct kexec_buf*) ; 
 void* FUNC9 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ppc64_rma_size ; 
 int /*<<< orphan*/  FUNC10 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int FUNC12 (struct kimage*,void*,unsigned long,unsigned long,char*) ; 
 int FUNC13 (struct kimage*,void const*,void*,unsigned long,unsigned long) ; 

__attribute__((used)) static void *FUNC14(struct kimage *image, char *kernel_buf,
			unsigned long kernel_len, char *initrd,
			unsigned long initrd_len, char *cmdline,
			unsigned long cmdline_len)
{
	int ret;
	unsigned int fdt_size;
	unsigned long kernel_load_addr;
	unsigned long initrd_load_addr = 0, fdt_load_addr;
	void *fdt;
	const void *slave_code;
	struct elfhdr ehdr;
	struct kexec_elf_info elf_info;
	struct kexec_buf kbuf = { .image = image, .buf_min = 0,
				  .buf_max = ppc64_rma_size };
	struct kexec_buf pbuf = { .image = image, .buf_min = 0,
				  .buf_max = ppc64_rma_size, .top_down = true,
				  .mem = KEXEC_BUF_MEM_UNKNOWN };

	ret = FUNC5(kernel_buf, kernel_len, &ehdr, &elf_info);
	if (ret)
		goto out;

	ret = FUNC6(image, &ehdr, &elf_info, &kbuf, &kernel_load_addr);
	if (ret)
		goto out;

	FUNC10("Loaded the kernel at 0x%lx\n", kernel_load_addr);

	ret = FUNC8(image, &pbuf);
	if (ret) {
		FUNC11("Loading purgatory failed.\n");
		goto out;
	}

	FUNC10("Loaded purgatory at 0x%lx\n", pbuf.mem);

	if (initrd != NULL) {
		kbuf.buffer = initrd;
		kbuf.bufsz = kbuf.memsz = initrd_len;
		kbuf.buf_align = PAGE_SIZE;
		kbuf.top_down = false;
		kbuf.mem = KEXEC_BUF_MEM_UNKNOWN;
		ret = FUNC4(&kbuf);
		if (ret)
			goto out;
		initrd_load_addr = kbuf.mem;

		FUNC10("Loaded initrd at 0x%lx\n", initrd_load_addr);
	}

	fdt_size = FUNC3(initial_boot_params) * 2;
	fdt = FUNC9(fdt_size, GFP_KERNEL);
	if (!fdt) {
		FUNC11("Not enough memory for the device tree.\n");
		ret = -ENOMEM;
		goto out;
	}
	ret = FUNC1(initial_boot_params, fdt, fdt_size);
	if (ret < 0) {
		FUNC11("Error setting up the new device tree.\n");
		ret = -EINVAL;
		goto out;
	}

	ret = FUNC12(image, fdt, initrd_load_addr, initrd_len, cmdline);
	if (ret)
		goto out;

	FUNC2(fdt);

	kbuf.buffer = fdt;
	kbuf.bufsz = kbuf.memsz = fdt_size;
	kbuf.buf_align = PAGE_SIZE;
	kbuf.top_down = true;
	kbuf.mem = KEXEC_BUF_MEM_UNKNOWN;
	ret = FUNC4(&kbuf);
	if (ret)
		goto out;
	fdt_load_addr = kbuf.mem;

	FUNC10("Loaded device tree at 0x%lx\n", fdt_load_addr);

	slave_code = elf_info.buffer + elf_info.proghdrs[0].p_offset;
	ret = FUNC13(image, slave_code, fdt, kernel_load_addr,
			      fdt_load_addr);
	if (ret)
		FUNC11("Error setting up the purgatory.\n");

out:
	FUNC7(&elf_info);

	/* Make kimage_file_post_load_cleanup free the fdt buffer for us. */
	return ret ? FUNC0(ret) : fdt;
}