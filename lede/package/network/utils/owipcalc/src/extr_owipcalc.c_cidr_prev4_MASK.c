#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_4__ {TYPE_1__ v4; } ;
struct cidr {int prefix; TYPE_2__ addr; } ;

/* Variables and functions */
 struct cidr* FUNC0 (struct cidr*) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static bool FUNC2(struct cidr *a, struct cidr *b)
{
	struct cidr *n = FUNC0(a);

	n->prefix = b->prefix;
	n->addr.v4.s_addr -= FUNC1(1 << (32 - b->prefix));

	return true;
}