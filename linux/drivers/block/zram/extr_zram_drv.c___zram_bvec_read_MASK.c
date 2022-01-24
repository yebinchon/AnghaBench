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
typedef  int /*<<< orphan*/  u32 ;
struct zram {int /*<<< orphan*/  mem_pool; int /*<<< orphan*/  comp; } ;
struct zcomp_strm {int dummy; } ;
struct page {int dummy; } ;
struct bio_vec {unsigned int bv_len; scalar_t__ bv_offset; struct page* bv_page; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  ZRAM_SAME ; 
 int /*<<< orphan*/  ZRAM_WB ; 
 int /*<<< orphan*/  ZS_MM_RO ; 
 void* FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct zram*,struct bio_vec*,unsigned long,struct bio*,int) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (struct zcomp_strm*,void*,unsigned int,void*) ; 
 struct zcomp_strm* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*,unsigned int,unsigned long) ; 
 unsigned long FUNC10 (struct zram*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC11 (struct zram*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC12 (struct zram*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct zram*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct zram*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct zram*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC16 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC18(struct zram *zram, struct page *page, u32 index,
				struct bio *bio, bool partial_io)
{
	int ret;
	unsigned long handle;
	unsigned int size;
	void *src, *dst;

	FUNC13(zram, index);
	if (FUNC15(zram, index, ZRAM_WB)) {
		struct bio_vec bvec;

		FUNC14(zram, index);

		bvec.bv_page = page;
		bvec.bv_len = PAGE_SIZE;
		bvec.bv_offset = 0;
		return FUNC4(zram, &bvec,
				FUNC10(zram, index),
				bio, partial_io);
	}

	handle = FUNC11(zram, index);
	if (!handle || FUNC15(zram, index, ZRAM_SAME)) {
		unsigned long value;
		void *mem;

		value = handle ? FUNC10(zram, index) : 0;
		mem = FUNC0(page);
		FUNC9(mem, PAGE_SIZE, value);
		FUNC1(mem);
		FUNC14(zram, index);
		return 0;
	}

	size = FUNC12(zram, index);

	src = FUNC16(zram->mem_pool, handle, ZS_MM_RO);
	if (size == PAGE_SIZE) {
		dst = FUNC0(page);
		FUNC2(dst, src, PAGE_SIZE);
		FUNC1(dst);
		ret = 0;
	} else {
		struct zcomp_strm *zstrm = FUNC7(zram->comp);

		dst = FUNC0(page);
		ret = FUNC6(zstrm, src, size, dst);
		FUNC1(dst);
		FUNC8(zram->comp);
	}
	FUNC17(zram->mem_pool, handle);
	FUNC14(zram, index);

	/* Should NEVER happen. Return bio error if it does. */
	if (FUNC5(ret))
		FUNC3("Decompression failed! err=%d, page=%u\n", ret, index);

	return ret;
}