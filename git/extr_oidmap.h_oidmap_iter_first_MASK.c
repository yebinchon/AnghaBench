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
struct oidmap_iter {int dummy; } ;
struct oidmap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct oidmap*,struct oidmap_iter*) ; 
 scalar_t__ FUNC1 (struct oidmap_iter*) ; 

__attribute__((used)) static inline void *FUNC2(struct oidmap *map,
				      struct oidmap_iter *iter)
{
	FUNC0(map, iter);
	/* TODO: this API could be reworked to do compile-time type checks */
	return (void *)FUNC1(iter);
}