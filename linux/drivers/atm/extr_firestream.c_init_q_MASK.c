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
struct queue {int offset; struct FS_QENTRY* ea; struct FS_QENTRY* sa; } ;
struct fs_dev {int dummy; } ;
struct FS_QENTRY {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FS_DEBUG_ALLOC ; 
 int /*<<< orphan*/  FS_DEBUG_INIT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct FS_QENTRY* FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct FS_QENTRY*) ; 
 int /*<<< orphan*/  FUNC10 (struct fs_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct fs_dev *dev, struct queue *txq, int queue,
		  int nentries, int is_rq)
{
	int sz = nentries * sizeof (struct FS_QENTRY);
	struct FS_QENTRY *p;

	FUNC7 ();

	FUNC6 (FS_DEBUG_INIT, "Initializing queue at %x: %d entries:\n",
		    queue, nentries);

	p = FUNC5 (sz, GFP_KERNEL, 0x10);
	FUNC6 (FS_DEBUG_ALLOC, "Alloc queue: %p(%d)\n", p, sz);

	if (!p) return 0;

	FUNC10 (dev, FUNC3(queue), FUNC9(p));
	FUNC10 (dev, FUNC1(queue), FUNC9(p+nentries-1));
	FUNC10 (dev, FUNC4(queue), FUNC9(p));
	FUNC10 (dev, FUNC2(queue), FUNC9(p));
	if (is_rq) {
		/* Configuration for the receive queue: 0: interrupt immediately,
		   no pre-warning to empty queues: We do our best to keep the
		   queue filled anyway. */
		FUNC10 (dev, FUNC0(queue), 0 ); 
	}

	txq->sa = p;
	txq->ea = p;
	txq->offset = queue; 

	FUNC8 ();
	return 1;
}