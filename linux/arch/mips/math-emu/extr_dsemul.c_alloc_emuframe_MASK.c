#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  bd_emupage_lock; scalar_t__ bd_emupage_allocmap; int /*<<< orphan*/  bd_emupage_queue; } ;
typedef  TYPE_2__ mm_context_t ;
struct TYPE_6__ {int /*<<< orphan*/  pid; TYPE_1__* mm; } ;
struct TYPE_4__ {TYPE_2__ context; } ;

/* Variables and functions */
 int BD_EMUFRAME_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  emupage_frame_count ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(void)
{
	mm_context_t *mm_ctx = &current->mm->context;
	int idx;

retry:
	FUNC5(&mm_ctx->bd_emupage_lock);

	/* Ensure we have an allocation bitmap */
	if (!mm_ctx->bd_emupage_allocmap) {
		mm_ctx->bd_emupage_allocmap =
			FUNC3(FUNC0(emupage_frame_count),
					      sizeof(unsigned long),
				GFP_ATOMIC);

		if (!mm_ctx->bd_emupage_allocmap) {
			idx = BD_EMUFRAME_NONE;
			goto out_unlock;
		}
	}

	/* Attempt to allocate a single bit/frame */
	idx = FUNC1(mm_ctx->bd_emupage_allocmap,
				      emupage_frame_count, 0);
	if (idx < 0) {
		/*
		 * Failed to allocate a frame. We'll wait until one becomes
		 * available. We unlock the page so that other threads actually
		 * get the opportunity to free their frames, which means
		 * technically the result of bitmap_full may be incorrect.
		 * However the worst case is that we repeat all this and end up
		 * back here again.
		 */
		FUNC6(&mm_ctx->bd_emupage_lock);
		if (!FUNC7(mm_ctx->bd_emupage_queue,
			!FUNC2(mm_ctx->bd_emupage_allocmap,
				     emupage_frame_count)))
			goto retry;

		/* Received a fatal signal - just give in */
		return BD_EMUFRAME_NONE;
	}

	/* Success! */
	FUNC4("allocate emuframe %d to %d\n", idx, current->pid);
out_unlock:
	FUNC6(&mm_ctx->bd_emupage_lock);
	return idx;
}