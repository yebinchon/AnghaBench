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
typedef  size_t uint32_t ;
struct pack_info {unsigned char* pack_name; scalar_t__ expired; } ;
struct hashfile {int dummy; } ;
typedef  int /*<<< orphan*/  padding ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned char*,unsigned char*) ; 
 int MIDX_CHUNK_ALIGNMENT ; 
 int /*<<< orphan*/  FUNC1 (struct hashfile*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (unsigned char*,unsigned char*) ; 
 int FUNC4 (unsigned char*) ; 

__attribute__((used)) static size_t FUNC5(struct hashfile *f,
				    struct pack_info *info,
				    uint32_t num_packs)
{
	uint32_t i;
	unsigned char padding[MIDX_CHUNK_ALIGNMENT];
	size_t written = 0;

	for (i = 0; i < num_packs; i++) {
		size_t writelen;

		if (info[i].expired)
			continue;

		if (i && FUNC3(info[i].pack_name, info[i - 1].pack_name) <= 0)
			FUNC0("incorrect pack-file order: %s before %s",
			    info[i - 1].pack_name,
			    info[i].pack_name);

		writelen = FUNC4(info[i].pack_name) + 1;
		FUNC1(f, info[i].pack_name, writelen);
		written += writelen;
	}

	/* add padding to be aligned */
	i = MIDX_CHUNK_ALIGNMENT - (written % MIDX_CHUNK_ALIGNMENT);
	if (i < MIDX_CHUNK_ALIGNMENT) {
		FUNC2(padding, 0, sizeof(padding));
		FUNC1(f, padding, i);
		written += i;
	}

	return written;
}