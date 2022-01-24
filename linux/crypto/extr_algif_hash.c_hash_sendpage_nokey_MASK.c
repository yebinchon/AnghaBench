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
struct socket {int dummy; } ;
struct page {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (struct socket*) ; 
 int FUNC1 (struct socket*,struct page*,int,size_t,int) ; 

__attribute__((used)) static ssize_t FUNC2(struct socket *sock, struct page *page,
				   int offset, size_t size, int flags)
{
	int err;

	err = FUNC0(sock);
	if (err)
		return err;

	return FUNC1(sock, page, offset, size, flags);
}