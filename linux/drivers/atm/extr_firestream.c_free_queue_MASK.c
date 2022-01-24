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
struct queue {int /*<<< orphan*/  sa; int /*<<< orphan*/  offset; } ;
struct fs_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FS_DEBUG_ALLOC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct fs_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct fs_dev *dev, struct queue *txq)
{
	FUNC5 ();

	FUNC8 (dev, FUNC2(txq->offset), 0);
	FUNC8 (dev, FUNC0(txq->offset), 0);
	FUNC8 (dev, FUNC1(txq->offset), 0);
	FUNC8 (dev, FUNC3(txq->offset), 0);
	/* Configuration ? */

	FUNC4 (FS_DEBUG_ALLOC, "Free queue: %p\n", txq->sa);
	FUNC7 (txq->sa);

	FUNC6 ();
}