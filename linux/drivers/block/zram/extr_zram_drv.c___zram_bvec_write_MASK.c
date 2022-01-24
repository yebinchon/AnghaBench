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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  pages_stored; int /*<<< orphan*/  huge_pages; int /*<<< orphan*/  compr_data_size; int /*<<< orphan*/  writestall; int /*<<< orphan*/  same_pages; } ;
struct zram {unsigned long limit_pages; TYPE_1__ stats; int /*<<< orphan*/  mem_pool; int /*<<< orphan*/  comp; } ;
struct zcomp_strm {void* buffer; } ;
struct page {int dummy; } ;
struct bio_vec {struct page* bv_page; } ;
struct bio {int dummy; } ;
typedef  enum zram_pageflags { ____Placeholder_zram_pageflags } zram_pageflags ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_NOIO ; 
 unsigned int PAGE_SIZE ; 
 int ZRAM_HUGE ; 
 int ZRAM_SAME ; 
 int /*<<< orphan*/  ZS_MM_WO ; 
 int __GFP_HIGHMEM ; 
 int __GFP_KSWAPD_RECLAIM ; 
 int __GFP_MOVABLE ; 
 int __GFP_NOWARN ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int huge_class_size ; 
 void* FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,unsigned int) ; 
 scalar_t__ FUNC5 (void*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct zram*,unsigned long) ; 
 int FUNC9 (struct zcomp_strm*,void*,unsigned int*) ; 
 struct zcomp_strm* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct zram*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct zram*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (struct zram*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct zram*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (struct zram*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (struct zram*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct zram*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC20 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC21 (int /*<<< orphan*/ ,unsigned int,int) ; 
 void* FUNC22 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC24(struct zram *zram, struct bio_vec *bvec,
				u32 index, struct bio *bio)
{
	int ret = 0;
	unsigned long alloced_pages;
	unsigned long handle = 0;
	unsigned int comp_len = 0;
	void *src, *dst, *mem;
	struct zcomp_strm *zstrm;
	struct page *page = bvec->bv_page;
	unsigned long element = 0;
	enum zram_pageflags flags = 0;

	mem = FUNC2(page);
	if (FUNC5(mem, &element)) {
		FUNC3(mem);
		/* Free memory associated with this sector now. */
		flags = ZRAM_SAME;
		FUNC1(&zram->stats.same_pages);
		goto out;
	}
	FUNC3(mem);

compress_again:
	zstrm = FUNC10(zram->comp);
	src = FUNC2(page);
	ret = FUNC9(zstrm, src, &comp_len);
	FUNC3(src);

	if (FUNC7(ret)) {
		FUNC11(zram->comp);
		FUNC6("Compression failed! err=%d\n", ret);
		FUNC19(zram->mem_pool, handle);
		return ret;
	}

	if (comp_len >= huge_class_size)
		comp_len = PAGE_SIZE;
	/*
	 * handle allocation has 2 paths:
	 * a) fast path is executed with preemption disabled (for
	 *  per-cpu streams) and has __GFP_DIRECT_RECLAIM bit clear,
	 *  since we can't sleep;
	 * b) slow path enables preemption and attempts to allocate
	 *  the page with __GFP_DIRECT_RECLAIM bit set. we have to
	 *  put per-cpu compression stream and, thus, to re-do
	 *  the compression once handle is allocated.
	 *
	 * if we have a 'non-null' handle here then we are coming
	 * from the slow path and handle has already been allocated.
	 */
	if (!handle)
		handle = FUNC21(zram->mem_pool, comp_len,
				__GFP_KSWAPD_RECLAIM |
				__GFP_NOWARN |
				__GFP_HIGHMEM |
				__GFP_MOVABLE);
	if (!handle) {
		FUNC11(zram->comp);
		FUNC1(&zram->stats.writestall);
		handle = FUNC21(zram->mem_pool, comp_len,
				GFP_NOIO | __GFP_HIGHMEM |
				__GFP_MOVABLE);
		if (handle)
			goto compress_again;
		return -ENOMEM;
	}

	alloced_pages = FUNC20(zram->mem_pool);
	FUNC8(zram, alloced_pages);

	if (zram->limit_pages && alloced_pages > zram->limit_pages) {
		FUNC11(zram->comp);
		FUNC19(zram->mem_pool, handle);
		return -ENOMEM;
	}

	dst = FUNC22(zram->mem_pool, handle, ZS_MM_WO);

	src = zstrm->buffer;
	if (comp_len == PAGE_SIZE)
		src = FUNC2(page);
	FUNC4(dst, src, comp_len);
	if (comp_len == PAGE_SIZE)
		FUNC3(src);

	FUNC11(zram->comp);
	FUNC23(zram->mem_pool, handle);
	FUNC0(comp_len, &zram->stats.compr_data_size);
out:
	/*
	 * Free memory associated with this sector
	 * before overwriting unused sectors.
	 */
	FUNC17(zram, index);
	FUNC12(zram, index);

	if (comp_len == PAGE_SIZE) {
		FUNC14(zram, index, ZRAM_HUGE);
		FUNC1(&zram->stats.huge_pages);
	}

	if (flags) {
		FUNC14(zram, index, flags);
		FUNC13(zram, index, element);
	}  else {
		FUNC15(zram, index, handle);
		FUNC16(zram, index, comp_len);
	}
	FUNC18(zram, index);

	/* Update stats */
	FUNC1(&zram->stats.pages_stored);
	return ret;
}