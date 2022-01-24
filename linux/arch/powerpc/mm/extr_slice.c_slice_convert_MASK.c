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
struct slice_mask {unsigned int low_slices; int /*<<< orphan*/  high_slices; } ;
struct mm_struct {int /*<<< orphan*/  context; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long SLICE_NUM_LOW ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*) ; 
 unsigned char* FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  slice_convert_lock ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 struct slice_mask* FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,struct slice_mask const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct mm_struct *mm,
				const struct slice_mask *mask, int psize)
{
	int index, mask_index;
	/* Write the new slice psize bits */
	unsigned char *hpsizes, *lpsizes;
	struct slice_mask *psize_mask, *old_mask;
	unsigned long i, flags;
	int old_psize;

	FUNC7("slice_convert(mm=%p, psize=%d)\n", mm, psize);
	FUNC9(" mask", mask);

	psize_mask = FUNC8(&mm->context, psize);

	/* We need to use a spinlock here to protect against
	 * concurrent 64k -> 4k demotion ...
	 */
	FUNC10(&slice_convert_lock, flags);

	lpsizes = FUNC5(&mm->context);
	for (i = 0; i < SLICE_NUM_LOW; i++) {
		if (!(mask->low_slices & (1u << i)))
			continue;

		mask_index = i & 0x1;
		index = i >> 1;

		/* Update the slice_mask */
		old_psize = (lpsizes[index] >> (mask_index * 4)) & 0xf;
		old_mask = FUNC8(&mm->context, old_psize);
		old_mask->low_slices &= ~(1u << i);
		psize_mask->low_slices |= 1u << i;

		/* Update the sizes array */
		lpsizes[index] = (lpsizes[index] & ~(0xf << (mask_index * 4))) |
				(((unsigned long)psize) << (mask_index * 4));
	}

	hpsizes = FUNC4(&mm->context);
	for (i = 0; i < FUNC0(FUNC6(&mm->context)); i++) {
		if (!FUNC12(i, mask->high_slices))
			continue;

		mask_index = i & 0x1;
		index = i >> 1;

		/* Update the slice_mask */
		old_psize = (hpsizes[index] >> (mask_index * 4)) & 0xf;
		old_mask = FUNC8(&mm->context, old_psize);
		FUNC1(i, old_mask->high_slices);
		FUNC2(i, psize_mask->high_slices);

		/* Update the sizes array */
		hpsizes[index] = (hpsizes[index] & ~(0xf << (mask_index * 4))) |
				(((unsigned long)psize) << (mask_index * 4));
	}

	FUNC7(" lsps=%lx, hsps=%lx\n",
		  (unsigned long)FUNC5(&mm->context),
		  (unsigned long)FUNC4(&mm->context));

	FUNC11(&slice_convert_lock, flags);

	FUNC3(mm);
}