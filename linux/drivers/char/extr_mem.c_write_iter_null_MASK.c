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
struct kiocb {int dummy; } ;
struct iov_iter {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iov_iter*,size_t) ; 
 size_t FUNC1 (struct iov_iter*) ; 

__attribute__((used)) static ssize_t FUNC2(struct kiocb *iocb, struct iov_iter *from)
{
	size_t count = FUNC1(from);
	FUNC0(from, count);
	return count;
}