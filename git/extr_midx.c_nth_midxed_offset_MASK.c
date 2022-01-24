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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
struct multi_pack_index {unsigned char* chunk_object_offsets; scalar_t__ chunk_large_offsets; } ;
typedef  int off_t ;

/* Variables and functions */
 int MIDX_CHUNK_OFFSET_WIDTH ; 
 int MIDX_LARGE_OFFSET_NEEDED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned char const*) ; 
 int FUNC3 (scalar_t__) ; 

__attribute__((used)) static off_t FUNC4(struct multi_pack_index *m, uint32_t pos)
{
	const unsigned char *offset_data;
	uint32_t offset32;

	offset_data = m->chunk_object_offsets + pos * MIDX_CHUNK_OFFSET_WIDTH;
	offset32 = FUNC2(offset_data + sizeof(uint32_t));

	if (m->chunk_large_offsets && offset32 & MIDX_LARGE_OFFSET_NEEDED) {
		if (sizeof(off_t) < sizeof(uint64_t))
			FUNC1(FUNC0("multi-pack-index stores a 64-bit offset, but off_t is too small"));

		offset32 ^= MIDX_LARGE_OFFSET_NEEDED;
		return FUNC3(m->chunk_large_offsets + sizeof(uint64_t) * offset32);
	}

	return offset32;
}