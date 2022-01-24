#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct stat {int st_size; } ;
struct TYPE_13__ {int bytes_used; } ;
typedef  TYPE_5__ squashfs_sb_t ;
typedef  scalar_t__ op_mode_t ;
struct TYPE_10__ {scalar_t__ minor; scalar_t__ major; } ;
struct TYPE_9__ {scalar_t__ minor; scalar_t__ major; } ;
struct TYPE_11__ {scalar_t__ ih_ksz; int /*<<< orphan*/  productid; TYPE_2__ fs; TYPE_1__ kernel; } ;
struct TYPE_12__ {char* ih_name; TYPE_3__ asus; } ;
struct TYPE_14__ {scalar_t__ ih_magic; scalar_t__ ih_size; TYPE_4__ tail; } ;
typedef  TYPE_6__ image_header_t ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 scalar_t__ FACTORY ; 
 scalar_t__ IH_MAGIC ; 
 int IH_NMLEN ; 
 int IH_PRODLEN ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  O_RDWR ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,char*,...) ; 
 scalar_t__ FUNC3 (int,struct stat*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,void*,int) ; 
 int /*<<< orphan*/  FUNC7 (void*,int,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*,int) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int FUNC11 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 

int
FUNC14(char *progname, char *filename, op_mode_t opmode)
{
	int 		fd, len;
	void 		*data, *ptr;
	char		namebuf[IH_NMLEN];
	struct 		stat sbuf;
	uint32_t	checksum, offset_kernel, offset_sqfs, offset_end,
				offset_sec_header, offset_eb, offset_image_end;
	squashfs_sb_t *sqs;
	image_header_t *hdr;

	if ((fd = FUNC11(filename, O_RDWR, 0666)) < 0) {
		FUNC2 (stderr, "%s: Can't open %s: %s\n",
			progname, filename, FUNC12(errno));
		return (EXIT_FAILURE);
	}

	if (FUNC3(fd, &sbuf) < 0) {
		FUNC2 (stderr, "%s: Can't stat %s: %s\n",
			progname, filename, FUNC12(errno));
		return (EXIT_FAILURE);
	}

	if ((unsigned)sbuf.st_size < sizeof(image_header_t)) {
		FUNC2 (stderr,
			"%s: Bad size: \"%s\" is no valid image\n",
			progname, filename);
		return (EXIT_FAILURE);
	}

	ptr = (void *)FUNC8(0, sbuf.st_size,
				PROT_READ | PROT_WRITE,
				MAP_SHARED,
				fd, 0);

	if ((caddr_t)ptr == (caddr_t)-1) {
		FUNC2 (stderr, "%s: Can't read %s: %s\n",
			progname, filename, FUNC12(errno));
		return (EXIT_FAILURE);
	}

	hdr = ptr;

	if (FUNC10(hdr->ih_magic) != IH_MAGIC) {
		FUNC2 (stderr,
			"%s: Bad Magic Number: \"%s\" is no valid image\n",
			progname, filename);
		return (EXIT_FAILURE);
	}

	if (opmode == FACTORY) {
		FUNC13(namebuf, hdr->tail.ih_name, IH_NMLEN);
		hdr->tail.asus.kernel.major = 0;
		hdr->tail.asus.kernel.minor = 0;
		hdr->tail.asus.fs.major = 0;
		hdr->tail.asus.fs.minor = 0;
		FUNC13((char *)&hdr->tail.asus.productid, "RT-N56U", IH_PRODLEN);
	}

	if (hdr->tail.asus.ih_ksz == 0)
		hdr->tail.asus.ih_ksz = FUNC5(FUNC10(hdr->ih_size) + sizeof(image_header_t));

	offset_kernel = sizeof(image_header_t);
	offset_sqfs = FUNC10(hdr->tail.asus.ih_ksz);
	sqs = ptr + offset_sqfs;
	offset_sec_header = offset_sqfs + sqs->bytes_used;

	/*
	 * Reserve space for the second header.
	 */
	offset_end = offset_sec_header + sizeof(image_header_t);
	offset_eb = ((offset_end>>16)+1)<<16;

	if (opmode == FACTORY)
		offset_image_end = offset_eb + 4;
	else
		offset_image_end = sbuf.st_size;
	/*
	 * Move the second header at the end of the image.
	 */
	offset_end = offset_sec_header;
	offset_sec_header = offset_eb - sizeof(image_header_t);

	/*
	 * Remove jffs2 markers between squashfs and eb boundary.
	 */
	if (opmode == FACTORY)
		FUNC7(ptr+offset_end, 0xff ,offset_eb - offset_end);

	/*
	 * Grow the image if needed.
	 */
	if (offset_image_end > sbuf.st_size) {
		(void) FUNC9((void *)ptr, sbuf.st_size);
		FUNC4(fd, offset_image_end);
		ptr = (void *)FUNC8(0, offset_image_end,
						PROT_READ | PROT_WRITE,
						MAP_SHARED,
						fd, 0);
		/*
		 * jffs2 marker
		 */
		if (opmode == FACTORY) {
			*(uint8_t *)(ptr+offset_image_end-4) = 0xde;
			*(uint8_t *)(ptr+offset_image_end-3) = 0xad;
			*(uint8_t *)(ptr+offset_image_end-2) = 0xc0;
			*(uint8_t *)(ptr+offset_image_end-1) = 0xde;
		}
	}

	/*
	 * Calculate checksums for the second header to be used after flashing.
	 */
	if (opmode == FACTORY) {
		hdr = ptr+offset_sec_header;
		FUNC6(hdr, ptr, sizeof(image_header_t));
		FUNC13(hdr->tail.ih_name, namebuf, IH_NMLEN);
		FUNC0(hdr, ptr+offset_kernel, offset_sqfs - offset_kernel);
		FUNC0((image_header_t *)ptr, ptr+offset_kernel, offset_image_end - offset_kernel);
	} else {
		FUNC0((image_header_t *)ptr, ptr+offset_kernel, offset_sqfs - offset_kernel);
	}

	if (sbuf.st_size > offset_image_end)
		(void) FUNC9((void *)ptr, sbuf.st_size);
	else
		(void) FUNC9((void *)ptr, offset_image_end);

	FUNC4(fd, offset_image_end);
	(void) FUNC1 (fd);

	return EXIT_SUCCESS;
}