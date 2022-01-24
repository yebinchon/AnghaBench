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
struct diff_queue_struct {scalar_t__ nr; struct diff_filepair** queue; int /*<<< orphan*/  alloc; } ;
struct diff_filepair {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct diff_filepair**,scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC1(struct diff_queue_struct *queue, struct diff_filepair *dp)
{
	FUNC0(queue->queue, queue->nr + 1, queue->alloc);
	queue->queue[queue->nr++] = dp;
}