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
struct traverse_info {int dummy; } ;
struct name_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct name_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct traverse_info*) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 

__attribute__((used)) static void FUNC4(int n,
				  unsigned long mask,
				  unsigned long dirmask,
				  struct name_entry *names,
				  struct traverse_info *info)
{
	int i;
	FUNC2("* unpack mask %lu, dirmask %lu, cnt %d ",
	       mask, dirmask, n);
	FUNC1(info);
	FUNC3('\n');
	for (i = 0; i < n; i++)
		FUNC0(i, names + i);
}