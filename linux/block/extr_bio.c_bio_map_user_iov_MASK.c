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
struct request_queue {int dummy; } ;
struct page {int dummy; } ;
struct iov_iter {int dummy; } ;
struct bio {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_MAX_PAGES ; 
 int /*<<< orphan*/  BIO_USER_MAPPED ; 
 int FUNC0 (size_t,size_t) ; 
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct bio* FUNC1 (int) ; 
 int /*<<< orphan*/  LONG_MAX ; 
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*,struct bio*,struct page*,unsigned int,size_t,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 struct bio* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct iov_iter*,size_t) ; 
 scalar_t__ FUNC9 (struct iov_iter*) ; 
 int FUNC10 (struct iov_iter*,struct page***,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC11 (struct iov_iter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct page**) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 size_t FUNC14 (struct request_queue*) ; 
 scalar_t__ FUNC15 (size_t) ; 

struct bio *FUNC16(struct request_queue *q,
			     struct iov_iter *iter,
			     gfp_t gfp_mask)
{
	int j;
	struct bio *bio;
	int ret;

	if (!FUNC9(iter))
		return FUNC1(-EINVAL);

	bio = FUNC4(gfp_mask, FUNC11(iter, BIO_MAX_PAGES));
	if (!bio)
		return FUNC1(-ENOMEM);

	while (FUNC9(iter)) {
		struct page **pages;
		ssize_t bytes;
		size_t offs, added = 0;
		int npages;

		bytes = FUNC10(iter, &pages, LONG_MAX, &offs);
		if (FUNC15(bytes <= 0)) {
			ret = bytes ? bytes : -EFAULT;
			goto out_unmap;
		}

		npages = FUNC0(offs + bytes, PAGE_SIZE);

		if (FUNC15(offs & FUNC14(q))) {
			ret = -EINVAL;
			j = 0;
		} else {
			for (j = 0; j < npages; j++) {
				struct page *page = pages[j];
				unsigned int n = PAGE_SIZE - offs;
				bool same_page = false;

				if (n > bytes)
					n = bytes;

				if (!FUNC2(q, bio, page, n, offs,
						&same_page)) {
					if (same_page)
						FUNC13(page);
					break;
				}

				added += n;
				bytes -= n;
				offs = 0;
			}
			FUNC8(iter, added);
		}
		/*
		 * release the pages we didn't map into the bio, if any
		 */
		while (j < npages)
			FUNC13(pages[j++]);
		FUNC12(pages);
		/* couldn't stuff something into bio? */
		if (bytes)
			break;
	}

	FUNC7(bio, BIO_USER_MAPPED);

	/*
	 * subtle -- if bio_map_user_iov() ended up bouncing a bio,
	 * it would normally disappear when its bi_end_io is run.
	 * however, we need it for the unmap, so grab an extra
	 * reference to it
	 */
	FUNC3(bio);
	return bio;

 out_unmap:
	FUNC6(bio, false);
	FUNC5(bio);
	return FUNC1(ret);
}