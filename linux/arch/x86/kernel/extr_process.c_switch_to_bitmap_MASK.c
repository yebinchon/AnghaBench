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
struct tss_struct {int /*<<< orphan*/  io_bitmap; } ;
struct thread_struct {int /*<<< orphan*/  io_bitmap_max; int /*<<< orphan*/  io_bitmap_ptr; } ;

/* Variables and functions */
 unsigned long _TIF_IO_BITMAP ; 
 int /*<<< orphan*/  cpu_tss_rw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct tss_struct* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC5(struct thread_struct *prev,
				    struct thread_struct *next,
				    unsigned long tifp, unsigned long tifn)
{
	struct tss_struct *tss = FUNC4(&cpu_tss_rw);

	if (tifn & _TIF_IO_BITMAP) {
		/*
		 * Copy the relevant range of the IO bitmap.
		 * Normally this is 128 bytes or less:
		 */
		FUNC1(tss->io_bitmap, next->io_bitmap_ptr,
		       FUNC0(prev->io_bitmap_max, next->io_bitmap_max));
		/*
		 * Make sure that the TSS limit is correct for the CPU
		 * to notice the IO bitmap.
		 */
		FUNC3();
	} else if (tifp & _TIF_IO_BITMAP) {
		/*
		 * Clear any possible leftover bits:
		 */
		FUNC2(tss->io_bitmap, 0xff, prev->io_bitmap_max);
	}
}