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
struct pollfd {int dummy; } ;
struct io_pump {scalar_t__ error; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pollfd*,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (struct pollfd*) ; 
 scalar_t__ FUNC2 (struct io_pump*,int,struct pollfd*) ; 

__attribute__((used)) static int FUNC3(struct io_pump *slots, int nr)
{
	struct pollfd *pfd;
	int i;

	for (i = 0; i < nr; i++)
		slots[i].error = 0;

	FUNC0(pfd, nr);
	while (FUNC2(slots, nr, pfd))
		; /* nothing */
	FUNC1(pfd);

	/* There may be multiple errno values, so just pick the first. */
	for (i = 0; i < nr; i++) {
		if (slots[i].error) {
			errno = slots[i].error;
			return -1;
		}
	}
	return 0;
}