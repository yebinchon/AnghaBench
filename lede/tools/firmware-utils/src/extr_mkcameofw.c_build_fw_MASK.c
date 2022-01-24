#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct img_header {int header_len; int /*<<< orphan*/  region; int /*<<< orphan*/  version; int /*<<< orphan*/  signature; int /*<<< orphan*/  model; void* kernel_size; void* image_size; void* checksum; } ;
struct TYPE_4__ {int write_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  combined ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (unsigned char*,int) ; 
 void* FUNC3 (int) ; 
 TYPE_1__ kernel_info ; 
 int kernel_size ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  model ; 
 int FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  region ; 
 TYPE_1__ rootfs_info ; 
 int /*<<< orphan*/  signature ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  version ; 
 int FUNC8 (char*,int) ; 

__attribute__((used)) static int FUNC9(void)
{
	int buflen;
	char *buf;
	char *p;
	uint32_t csum;
	struct img_header *hdr;
	int ret = EXIT_FAILURE;

	buflen = sizeof(struct img_header) +
		 kernel_info.write_size + rootfs_info.write_size;

	buf = FUNC4(buflen);
	if (!buf) {
		FUNC0("no memory for buffer\n");
		goto out;
	}

	FUNC5(buf, 0, buflen);

	p = buf + sizeof(struct img_header);

	/* read kernel data */
	ret = FUNC6(&kernel_info, p);
	if (ret)
		goto out_free_buf;

	if (!combined) {
		p += kernel_info.write_size;

		/* read rootfs data */
		ret = FUNC6(&rootfs_info, p);
		if (ret)
			goto out_free_buf;
	}

	csum = FUNC2((unsigned char *)(buf + sizeof(struct img_header)),
			buflen - sizeof(struct img_header));

	/* fill firmware header */
	hdr = (struct img_header *) buf;

	hdr->checksum = FUNC3(csum);
	hdr->image_size = FUNC3(buflen - sizeof(struct img_header));
	if (!combined)
		hdr->kernel_size = FUNC3(kernel_info.write_size);
	else
		hdr->kernel_size = FUNC3(kernel_size);
	hdr->header_len = sizeof(struct img_header);
	FUNC7(hdr->model, model, sizeof(hdr->model));
	FUNC7(hdr->signature, signature, sizeof(hdr->signature));
	FUNC7(hdr->version, version, sizeof(hdr->version));
	FUNC7(hdr->region, region, sizeof(hdr->region));

	ret = FUNC8(buf, buflen);
	if (ret)
		goto out_free_buf;

	ret = EXIT_SUCCESS;

out_free_buf:
	FUNC1(buf);
out:
	return ret;
}