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
typedef  int u32 ;
struct queue {int /*<<< orphan*/  offset; } ;
struct fs_dev {int dummy; } ;
struct FS_QENTRY {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FS_DEBUG_TXQ ; 
 int Q_FULL ; 
 int /*<<< orphan*/  Q_INCWRAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct FS_QENTRY* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int FUNC4 (struct fs_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct fs_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7 (struct fs_dev *dev, struct queue *q, struct FS_QENTRY *qe)
{
	u32 wp;
	struct FS_QENTRY *cqe;

	/* XXX Sanity check: the write pointer can be checked to be 
	   still the same as the value passed as qe... -- REW */
	/*  udelay (5); */
	while ((wp = FUNC4 (dev, FUNC1 (q->offset))) & Q_FULL) {
		FUNC3 (FS_DEBUG_TXQ, "Found queue at %x full. Waiting.\n", 
			    q->offset);
		FUNC5 ();
	}

	wp &= ~0xf;
	cqe = FUNC2 (wp);
	if (qe != cqe) {
		FUNC3 (FS_DEBUG_TXQ, "q mismatch! %p %p\n", qe, cqe);
	}

	FUNC6 (dev, FUNC1(q->offset), Q_INCWRAP);

	{
		static int c;
		if (!(c++ % 100))
			{
				int rp, wp;
				rp =  FUNC4 (dev, FUNC0(q->offset));
				wp =  FUNC4 (dev, FUNC1(q->offset));
				FUNC3 (FS_DEBUG_TXQ, "q at %d: %x-%x: %x entries.\n", 
					    q->offset, rp, wp, wp-rp);
			}
	}
}