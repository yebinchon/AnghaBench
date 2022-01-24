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
struct iovec {int /*<<< orphan*/  iov_len; int /*<<< orphan*/  iov_base; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,struct iovec*,size_t) ; 

__attribute__((used)) static ssize_t FUNC2(int fd, struct iovec* vec, size_t n) {
  if (n == 1)
    return FUNC0(fd, vec->iov_base, vec->iov_len);
  else
    return FUNC1(fd, vec, n);
}