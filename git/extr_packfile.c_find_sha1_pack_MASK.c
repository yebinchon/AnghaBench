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
struct packed_git {struct packed_git* next; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char const*,struct packed_git*) ; 

struct packed_git *FUNC1(const unsigned char *sha1,
				  struct packed_git *packs)
{
	struct packed_git *p;

	for (p = packs; p; p = p->next) {
		if (FUNC0(sha1, p))
			return p;
	}
	return NULL;

}