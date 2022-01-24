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
struct io_thread_req {int cow_offset; int /*<<< orphan*/  bitmap_words; int /*<<< orphan*/ * fds; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC2(struct io_thread_req *req)
{
	int n;

	if(req->cow_offset == -1)
		return FUNC0(0);

	n = FUNC1(req->fds[1], &req->bitmap_words,
			  sizeof(req->bitmap_words), req->cow_offset);
	if (n != sizeof(req->bitmap_words))
		return FUNC0(-n);

	return FUNC0(0);
}