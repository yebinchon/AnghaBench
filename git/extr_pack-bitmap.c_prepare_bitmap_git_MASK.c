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
struct repository {int dummy; } ;
struct bitmap_index {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bitmap_index*) ; 
 int /*<<< orphan*/  FUNC1 (struct bitmap_index*) ; 
 int /*<<< orphan*/  FUNC2 (struct repository*,struct bitmap_index*) ; 
 struct bitmap_index* FUNC3 (int,int) ; 

struct bitmap_index *FUNC4(struct repository *r)
{
	struct bitmap_index *bitmap_git = FUNC3(1, sizeof(*bitmap_git));

	if (!FUNC2(r, bitmap_git) && !FUNC1(bitmap_git))
		return bitmap_git;

	FUNC0(bitmap_git);
	return NULL;
}