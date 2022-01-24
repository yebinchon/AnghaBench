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
struct diff_queue_struct {int dummy; } ;
struct diff_filespec {int dummy; } ;
struct diff_filepair {struct diff_filespec* two; struct diff_filespec* one; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct diff_queue_struct*,struct diff_filepair*) ; 
 struct diff_filepair* FUNC1 (int,int) ; 

struct diff_filepair *FUNC2(struct diff_queue_struct *queue,
				 struct diff_filespec *one,
				 struct diff_filespec *two)
{
	struct diff_filepair *dp = FUNC1(1, sizeof(*dp));
	dp->one = one;
	dp->two = two;
	if (queue)
		FUNC0(queue, dp);
	return dp;
}