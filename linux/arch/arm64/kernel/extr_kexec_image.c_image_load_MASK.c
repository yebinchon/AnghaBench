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
typedef  void* u64 ;
struct kimage {scalar_t__ type; int nr_segments; unsigned long start; struct kexec_segment* segment; } ;
struct kexec_segment {unsigned long mem; unsigned long memsz; } ;
struct kexec_buf {int top_down; char* buffer; unsigned long bufsz; unsigned long memsz; int /*<<< orphan*/  buf_align; int /*<<< orphan*/  mem; int /*<<< orphan*/  buf_max; scalar_t__ buf_min; struct kimage* image; } ;
struct arm64_image_header {int /*<<< orphan*/  text_offset; int /*<<< orphan*/  image_size; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARM64_IMAGE_FLAG_BE ; 
 int /*<<< orphan*/  ARM64_IMAGE_FLAG_PAGE_SIZE ; 
 void* ARM64_IMAGE_FLAG_PAGE_SIZE_16K ; 
 void* ARM64_IMAGE_FLAG_PAGE_SIZE_4K ; 
 void* ARM64_IMAGE_FLAG_PAGE_SIZE_64K ; 
 int /*<<< orphan*/  CONFIG_CPU_BIG_ENDIAN ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 void* FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEXEC_BUF_MEM_UNKNOWN ; 
 scalar_t__ KEXEC_TYPE_CRASH ; 
 int /*<<< orphan*/  MIN_KIMG_ALIGN ; 
 int /*<<< orphan*/  ULONG_MAX ; 
 void* FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct kexec_buf*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct kimage*,unsigned long,unsigned long,char*,unsigned long,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static void *FUNC11(struct kimage *image,
				char *kernel, unsigned long kernel_len,
				char *initrd, unsigned long initrd_len,
				char *cmdline, unsigned long cmdline_len)
{
	struct arm64_image_header *h;
	u64 flags, value;
	bool be_image, be_kernel;
	struct kexec_buf kbuf;
	unsigned long text_offset;
	struct kexec_segment *kernel_segment;
	int ret;

	/* We don't support crash kernels yet. */
	if (image->type == KEXEC_TYPE_CRASH)
		return FUNC0(-EOPNOTSUPP);

	/*
	 * We require a kernel with an unambiguous Image header. Per
	 * Documentation/arm64/booting.rst, this is the case when image_size
	 * is non-zero (practically speaking, since v3.17).
	 */
	h = (struct arm64_image_header *)kernel;
	if (!h->image_size)
		return FUNC0(-EINVAL);

	/* Check cpu features */
	flags = FUNC4(h->flags);
	be_image = FUNC2(flags, ARM64_IMAGE_FLAG_BE);
	be_kernel = FUNC1(CONFIG_CPU_BIG_ENDIAN);
	if ((be_image != be_kernel) && !FUNC10())
		return FUNC0(-EINVAL);

	value = FUNC2(flags, ARM64_IMAGE_FLAG_PAGE_SIZE);
	if (((value == ARM64_IMAGE_FLAG_PAGE_SIZE_4K) &&
			!FUNC8()) ||
	    ((value == ARM64_IMAGE_FLAG_PAGE_SIZE_64K) &&
			!FUNC9()) ||
	    ((value == ARM64_IMAGE_FLAG_PAGE_SIZE_16K) &&
			!FUNC7()))
		return FUNC0(-EINVAL);

	/* Load the kernel */
	kbuf.image = image;
	kbuf.buf_min = 0;
	kbuf.buf_max = ULONG_MAX;
	kbuf.top_down = false;

	kbuf.buffer = kernel;
	kbuf.bufsz = kernel_len;
	kbuf.mem = KEXEC_BUF_MEM_UNKNOWN;
	kbuf.memsz = FUNC4(h->image_size);
	text_offset = FUNC4(h->text_offset);
	kbuf.buf_align = MIN_KIMG_ALIGN;

	/* Adjust kernel segment with TEXT_OFFSET */
	kbuf.memsz += text_offset;

	ret = FUNC3(&kbuf);
	if (ret)
		return FUNC0(ret);

	kernel_segment = &image->segment[image->nr_segments - 1];
	kernel_segment->mem += text_offset;
	kernel_segment->memsz -= text_offset;
	image->start = kernel_segment->mem;

	FUNC6("Loaded kernel at 0x%lx bufsz=0x%lx memsz=0x%lx\n",
				kernel_segment->mem, kbuf.bufsz,
				kernel_segment->memsz);

	/* Load additional data */
	ret = FUNC5(image,
				kernel_segment->mem, kernel_segment->memsz,
				initrd, initrd_len, cmdline);

	return FUNC0(ret);
}