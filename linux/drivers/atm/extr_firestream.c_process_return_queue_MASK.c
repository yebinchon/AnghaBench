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
struct queue {int /*<<< orphan*/  offset; } ;
struct fs_dev {int dummy; } ;
struct FS_QENTRY {long p0; int /*<<< orphan*/  p2; int /*<<< orphan*/  p1; int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FS_DEBUG_ALLOC ; 
 int /*<<< orphan*/  FS_DEBUG_QUEUE ; 
 long Q_EMPTY ; 
 int /*<<< orphan*/  Q_INCWRAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct FS_QENTRY*) ; 
 void* FUNC2 (long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,void*,...) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 long FUNC5 (struct fs_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fs_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7 (struct fs_dev *dev, struct queue *q)
{
	long rq;
	struct FS_QENTRY *qe;
	void *tc;
  
	while (!((rq = FUNC5 (dev, FUNC0(q->offset))) & Q_EMPTY)) {
		FUNC3 (FS_DEBUG_QUEUE, "reaping return queue entry at %lx\n", rq); 
		qe = FUNC2 (rq);
    
		FUNC3 (FS_DEBUG_QUEUE, "queue entry: %08x %08x %08x %08x. (%d)\n", 
			    qe->cmd, qe->p0, qe->p1, qe->p2, FUNC1 (qe));

		switch (FUNC1 (qe)) {
		case 5:
			tc = FUNC2 (qe->p0);
			FUNC3 (FS_DEBUG_ALLOC, "Free tc: %p\n", tc);
			FUNC4 (tc);
			break;
		}
    
		FUNC6 (dev, FUNC0(q->offset), Q_INCWRAP);
	}
}