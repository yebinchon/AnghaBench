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
 size_t EFAULT ; 
 size_t ERESTARTSYS ; 
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  current ; 
 size_t FUNC1 (struct iov_iter*) ; 
 size_t FUNC2 (size_t,struct iov_iter*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC4(struct kiocb *iocb, struct iov_iter *iter)
{
	size_t written = 0;

	while (FUNC1(iter)) {
		size_t chunk = FUNC1(iter), n;

		if (chunk > PAGE_SIZE)
			chunk = PAGE_SIZE;	/* Just for latency reasons */
		n = FUNC2(chunk, iter);
		if (!n && FUNC1(iter))
			return written ? written : -EFAULT;
		written += n;
		if (FUNC3(current))
			return written ? written : -ERESTARTSYS;
		FUNC0();
	}
	return written;
}