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
typedef  unsigned long u64 ;
struct page {int dummy; } ;
struct drbd_device {int /*<<< orphan*/  ldev; struct drbd_bitmap* bitmap; } ;
struct drbd_bitmap {scalar_t__ bm_dev_capacity; unsigned long bm_number_of_pages; unsigned long bm_words; unsigned long bm_set; unsigned long bm_bits; int /*<<< orphan*/  bm_lock; struct page** bm_pages; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,int) ; 
 int /*<<< orphan*/  BM_LOCKED_MASK ; 
 int BM_SECT_PER_BIT ; 
 unsigned long FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  DRBD_FAULT_BM_ALLOC ; 
 int /*<<< orphan*/  FUNC2 (struct drbd_device*,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int ENOSPC ; 
 unsigned long LN2_BPL ; 
 unsigned long PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC3 (struct drbd_bitmap*) ; 
 unsigned long FUNC4 (struct drbd_bitmap*) ; 
 int /*<<< orphan*/  FUNC5 (struct page**,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct drbd_bitmap*,unsigned long,int,unsigned long) ; 
 struct page** FUNC7 (struct drbd_bitmap*,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct drbd_bitmap*) ; 
 int /*<<< orphan*/  FUNC9 (struct page**) ; 
 int /*<<< orphan*/  FUNC10 (struct drbd_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct drbd_device*,char*,unsigned long,...) ; 
 scalar_t__ FUNC13 (struct drbd_device*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct drbd_bitmap*) ; 
 scalar_t__ FUNC16 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

int FUNC20(struct drbd_device *device, sector_t capacity, int set_new_bits)
{
	struct drbd_bitmap *b = device->bitmap;
	unsigned long bits, words, owords, obits;
	unsigned long want, have, onpages; /* number of pages */
	struct page **npages, **opages = NULL;
	int err = 0;
	bool growing;

	if (!FUNC15(b))
		return -ENOMEM;

	FUNC10(device, "resize", BM_LOCKED_MASK);

	FUNC12(device, "drbd_bm_resize called with capacity == %llu\n",
			(unsigned long long)capacity);

	if (capacity == b->bm_dev_capacity)
		goto out;

	if (capacity == 0) {
		FUNC18(&b->bm_lock);
		opages = b->bm_pages;
		onpages = b->bm_number_of_pages;
		owords = b->bm_words;
		b->bm_pages = NULL;
		b->bm_number_of_pages =
		b->bm_set   =
		b->bm_bits  =
		b->bm_words =
		b->bm_dev_capacity = 0;
		FUNC19(&b->bm_lock);
		FUNC5(opages, onpages);
		FUNC9(opages);
		goto out;
	}
	bits  = FUNC1(FUNC0(capacity, BM_SECT_PER_BIT));

	/* if we would use
	   words = ALIGN(bits,BITS_PER_LONG) >> LN2_BPL;
	   a 32bit host could present the wrong number of words
	   to a 64bit host.
	*/
	words = FUNC0(bits, 64) >> LN2_BPL;

	if (FUNC16(device)) {
		u64 bits_on_disk = FUNC14(device->ldev);
		FUNC17(device);
		if (bits > bits_on_disk) {
			FUNC12(device, "bits = %lu\n", bits);
			FUNC12(device, "bits_on_disk = %llu\n", bits_on_disk);
			err = -ENOSPC;
			goto out;
		}
	}

	want = FUNC0(words*sizeof(long), PAGE_SIZE) >> PAGE_SHIFT;
	have = b->bm_number_of_pages;
	if (want == have) {
		FUNC2(device, b->bm_pages != NULL);
		npages = b->bm_pages;
	} else {
		if (FUNC13(device, DRBD_FAULT_BM_ALLOC))
			npages = NULL;
		else
			npages = FUNC7(b, want);
	}

	if (!npages) {
		err = -ENOMEM;
		goto out;
	}

	FUNC18(&b->bm_lock);
	opages = b->bm_pages;
	owords = b->bm_words;
	obits  = b->bm_bits;

	growing = bits > obits;
	if (opages && growing && set_new_bits)
		FUNC8(b);

	b->bm_pages = npages;
	b->bm_number_of_pages = want;
	b->bm_bits  = bits;
	b->bm_words = words;
	b->bm_dev_capacity = capacity;

	if (growing) {
		if (set_new_bits) {
			FUNC6(b, owords, 0xff, words-owords);
			b->bm_set += bits - obits;
		} else
			FUNC6(b, owords, 0x00, words-owords);

	}

	if (want < have) {
		/* implicit: (opages != NULL) && (opages != npages) */
		FUNC5(opages + want, have - want);
	}

	(void)FUNC3(b);

	FUNC19(&b->bm_lock);
	if (opages != npages)
		FUNC9(opages);
	if (!growing)
		b->bm_set = FUNC4(b);
	FUNC12(device, "resync bitmap: bits=%lu words=%lu pages=%lu\n", bits, words, want);

 out:
	FUNC11(device);
	return err;
}