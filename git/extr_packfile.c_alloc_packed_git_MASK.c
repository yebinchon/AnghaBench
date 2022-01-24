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
struct packed_git {int pack_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct packed_git*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 struct packed_git* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct packed_git *FUNC3(int extra)
{
	struct packed_git *p = FUNC2(FUNC1(sizeof(*p), extra));
	FUNC0(p, 0, sizeof(*p));
	p->pack_fd = -1;
	return p;
}