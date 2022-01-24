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
struct oidset_iter {int dummy; } ;
struct oidset {int dummy; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct oidset*,struct oidset_iter*) ; 
 struct object_id* FUNC1 (struct oidset_iter*) ; 

__attribute__((used)) static inline struct object_id *FUNC2(struct oidset *set,
						  struct oidset_iter *iter)
{
	FUNC0(set, iter);
	return FUNC1(iter);
}