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
struct trx_header {int dummy; } ;
struct mtd_info {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (struct mtd_info*,size_t,size_t,size_t*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct mtd_info *mtd, size_t offset,
		   struct trx_header *header)
{
	size_t header_len;
	size_t retlen;
	int ret;

	header_len = sizeof(*header);
	ret = FUNC0(mtd, offset, header_len, &retlen,
		       (unsigned char *) header);
	if (ret) {
		FUNC1("read error in \"%s\"\n", mtd->name);
		return ret;
	}

	if (retlen != header_len) {
		FUNC1("short read in \"%s\"\n", mtd->name);
		return -EIO;
	}

	return 0;
}