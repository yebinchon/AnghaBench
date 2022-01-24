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
struct freepool {int n; int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct fs_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2 (struct fs_dev *dev, struct freepool *fp)
{
#if 0
	/* This seems to be unreliable.... */
	return read_fs (dev, FP_CNT (fp->offset));
#else
	return fp->n;
#endif
}