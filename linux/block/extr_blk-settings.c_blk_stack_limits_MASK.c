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
struct queue_limits {int max_write_same_sectors; int max_write_zeroes_sectors; int misaligned; unsigned int alignment_offset; unsigned int physical_block_size; unsigned int io_min; int logical_block_size; int io_opt; int raid_partial_stripes_expensive; int discard_granularity; unsigned int discard_alignment; int discard_misaligned; void* chunk_sectors; void* max_hw_discard_sectors; void* max_discard_sectors; void* max_segment_size; void* max_integrity_segments; void* max_discard_segments; void* max_segments; void* virt_boundary_mask; void* seg_boundary_mask; void* bounce_pfn; void* max_dev_sectors; void* max_hw_sectors; void* max_sectors; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int FUNC0 (int,unsigned int) ; 
 int FUNC1 (unsigned int,unsigned int) ; 
 int FUNC2 (unsigned int,unsigned int) ; 
 void* FUNC3 (void*,void*) ; 
 unsigned int FUNC4 (struct queue_limits*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (struct queue_limits*,int /*<<< orphan*/ ) ; 

int FUNC6(struct queue_limits *t, struct queue_limits *b,
		     sector_t start)
{
	unsigned int top, bottom, alignment, ret = 0;

	t->max_sectors = FUNC3(t->max_sectors, b->max_sectors);
	t->max_hw_sectors = FUNC3(t->max_hw_sectors, b->max_hw_sectors);
	t->max_dev_sectors = FUNC3(t->max_dev_sectors, b->max_dev_sectors);
	t->max_write_same_sectors = FUNC2(t->max_write_same_sectors,
					b->max_write_same_sectors);
	t->max_write_zeroes_sectors = FUNC2(t->max_write_zeroes_sectors,
					b->max_write_zeroes_sectors);
	t->bounce_pfn = FUNC3(t->bounce_pfn, b->bounce_pfn);

	t->seg_boundary_mask = FUNC3(t->seg_boundary_mask,
					    b->seg_boundary_mask);
	t->virt_boundary_mask = FUNC3(t->virt_boundary_mask,
					    b->virt_boundary_mask);

	t->max_segments = FUNC3(t->max_segments, b->max_segments);
	t->max_discard_segments = FUNC3(t->max_discard_segments,
					       b->max_discard_segments);
	t->max_integrity_segments = FUNC3(t->max_integrity_segments,
						 b->max_integrity_segments);

	t->max_segment_size = FUNC3(t->max_segment_size,
					   b->max_segment_size);

	t->misaligned |= b->misaligned;

	alignment = FUNC4(b, start);

	/* Bottom device has different alignment.  Check that it is
	 * compatible with the current top alignment.
	 */
	if (t->alignment_offset != alignment) {

		top = FUNC1(t->physical_block_size, t->io_min)
			+ t->alignment_offset;
		bottom = FUNC1(b->physical_block_size, b->io_min) + alignment;

		/* Verify that top and bottom intervals line up */
		if (FUNC1(top, bottom) % FUNC2(top, bottom)) {
			t->misaligned = 1;
			ret = -1;
		}
	}

	t->logical_block_size = FUNC1(t->logical_block_size,
				    b->logical_block_size);

	t->physical_block_size = FUNC1(t->physical_block_size,
				     b->physical_block_size);

	t->io_min = FUNC1(t->io_min, b->io_min);
	t->io_opt = FUNC0(t->io_opt, b->io_opt);

	/* Physical block size a multiple of the logical block size? */
	if (t->physical_block_size & (t->logical_block_size - 1)) {
		t->physical_block_size = t->logical_block_size;
		t->misaligned = 1;
		ret = -1;
	}

	/* Minimum I/O a multiple of the physical block size? */
	if (t->io_min & (t->physical_block_size - 1)) {
		t->io_min = t->physical_block_size;
		t->misaligned = 1;
		ret = -1;
	}

	/* Optimal I/O a multiple of the physical block size? */
	if (t->io_opt & (t->physical_block_size - 1)) {
		t->io_opt = 0;
		t->misaligned = 1;
		ret = -1;
	}

	t->raid_partial_stripes_expensive =
		FUNC1(t->raid_partial_stripes_expensive,
		    b->raid_partial_stripes_expensive);

	/* Find lowest common alignment_offset */
	t->alignment_offset = FUNC0(t->alignment_offset, alignment)
		% FUNC1(t->physical_block_size, t->io_min);

	/* Verify that new alignment_offset is on a logical block boundary */
	if (t->alignment_offset & (t->logical_block_size - 1)) {
		t->misaligned = 1;
		ret = -1;
	}

	/* Discard alignment and granularity */
	if (b->discard_granularity) {
		alignment = FUNC5(b, start);

		if (t->discard_granularity != 0 &&
		    t->discard_alignment != alignment) {
			top = t->discard_granularity + t->discard_alignment;
			bottom = b->discard_granularity + alignment;

			/* Verify that top and bottom intervals line up */
			if ((FUNC1(top, bottom) % FUNC2(top, bottom)) != 0)
				t->discard_misaligned = 1;
		}

		t->max_discard_sectors = FUNC3(t->max_discard_sectors,
						      b->max_discard_sectors);
		t->max_hw_discard_sectors = FUNC3(t->max_hw_discard_sectors,
							 b->max_hw_discard_sectors);
		t->discard_granularity = FUNC1(t->discard_granularity,
					     b->discard_granularity);
		t->discard_alignment = FUNC0(t->discard_alignment, alignment) %
			t->discard_granularity;
	}

	if (b->chunk_sectors)
		t->chunk_sectors = FUNC3(t->chunk_sectors,
						b->chunk_sectors);

	return ret;
}