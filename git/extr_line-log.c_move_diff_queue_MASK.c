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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct diff_queue_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct diff_queue_struct*,struct diff_queue_struct*,int) ; 

__attribute__((used)) static void FUNC3(struct diff_queue_struct *dst,
			    struct diff_queue_struct *src)
{
	FUNC1(src != dst);
	FUNC2(dst, src, sizeof(struct diff_queue_struct));
	FUNC0(src);
}