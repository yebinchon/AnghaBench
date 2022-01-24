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
struct hlist_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hlist_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct hlist_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct hlist_node*) ; 

__attribute__((used)) static inline void FUNC3(struct hlist_node *n)
{
	if (!FUNC2(n)) {
		FUNC1(n);
		FUNC0(n);
	}
}