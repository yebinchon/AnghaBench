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
struct fs_dev {int dummy; } ;
struct freepool {int offset; int bufsize; int nr_buffers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FS_DEBUG_INIT ; 
 int RBFP_CME ; 
 int RBFP_RBS ; 
 int RBFP_RBSVAL ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct fs_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct fs_dev *dev, struct freepool *fp, int queue,
		   int bufsize, int nr_buffers)
{
	FUNC6 ();

	FUNC5 (FS_DEBUG_INIT, "Initializing free pool at %x:\n", queue);

	FUNC8 (dev, FUNC0(queue), (bufsize * RBFP_RBS) | RBFP_RBSVAL | RBFP_CME);
	FUNC8 (dev, FUNC4(queue),  0);
	FUNC8 (dev, FUNC3(queue),  0);
	FUNC8 (dev, FUNC2(queue), 0);
	FUNC8 (dev, FUNC1(queue), 0);

	fp->offset = queue; 
	fp->bufsize = bufsize;
	fp->nr_buffers = nr_buffers;

	FUNC7 ();
	return 1;
}