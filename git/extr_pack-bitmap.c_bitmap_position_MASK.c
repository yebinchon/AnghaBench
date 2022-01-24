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
struct object_id {int dummy; } ;
struct bitmap_index {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct bitmap_index*,struct object_id const*) ; 
 int FUNC1 (struct bitmap_index*,struct object_id const*) ; 

__attribute__((used)) static int FUNC2(struct bitmap_index *bitmap_git,
			   const struct object_id *oid)
{
	int pos = FUNC1(bitmap_git, oid);
	return (pos >= 0) ? pos : FUNC0(bitmap_git, oid);
}