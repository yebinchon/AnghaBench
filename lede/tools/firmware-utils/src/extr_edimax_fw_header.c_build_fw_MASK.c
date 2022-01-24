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
struct edimax_header {void* header_csum; void* data_csum; int /*<<< orphan*/  type; void* data_size; void* end_addr; void* start_addr; int /*<<< orphan*/  force; int /*<<< orphan*/  mtd_name; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  magic; int /*<<< orphan*/  model; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 void* FUNC1 (unsigned char*,int) ; 
 int data_size ; 
 int end_addr ; 
 int /*<<< orphan*/  force ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  fw_version ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  ifname ; 
 int /*<<< orphan*/  image_type ; 
 int /*<<< orphan*/  magic ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct edimax_header*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  model ; 
 int /*<<< orphan*/  mtd_name ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int start_addr ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (char*,int) ; 

__attribute__((used)) static int FUNC9(void)
{
	int buflen;
	char *buf;
	char *data;
	struct edimax_header *hdr;
	int ret = EXIT_FAILURE;

	buflen = sizeof(struct edimax_header) + data_size;

	buf = FUNC4(buflen);
	if (!buf) {
		FUNC0("no memory for buffer\n");
		goto out;
	}

	data = buf + sizeof(struct edimax_header);

	/* read input file */
	ret = FUNC6(ifname, data, data_size);
	if (ret)
		goto out_free_buf;

	/* fill firmware header */
	hdr = (struct edimax_header *)buf;
	FUNC5(hdr, 0, sizeof(struct edimax_header));

	FUNC7(hdr->model, model, sizeof(hdr->model));
	FUNC7(hdr->magic, magic, sizeof(hdr->magic));
	FUNC7(hdr->fw_version, fw_version, sizeof(hdr->fw_version));
	FUNC7(hdr->mtd_name, mtd_name, sizeof(hdr->mtd_name));

	hdr->force = force;
	hdr->start_addr = FUNC3(start_addr);
	hdr->end_addr = FUNC3(end_addr);
	hdr->data_size = FUNC3(data_size);
	hdr->type = image_type;

	hdr->data_csum = FUNC1((unsigned char *)data, data_size);
	hdr->header_csum = FUNC1((unsigned char *)hdr,
				    sizeof(struct edimax_header));

	ret = FUNC8(buf, buflen);
	if (ret)
		goto out_free_buf;

	ret = EXIT_SUCCESS;

out_free_buf:
	FUNC2(buf);
out:
	return ret;
}