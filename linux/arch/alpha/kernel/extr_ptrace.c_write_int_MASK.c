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
struct task_struct {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int FOLL_FORCE ; 
 int FOLL_WRITE ; 
 int FUNC0 (struct task_struct*,unsigned long,int*,int,int) ; 

__attribute__((used)) static inline int
FUNC1(struct task_struct *task, unsigned long addr, int data)
{
	int copied = FUNC0(task, addr, &data, sizeof(int),
			FOLL_FORCE | FOLL_WRITE);
	return (copied == sizeof(int)) ? 0 : -EIO;
}