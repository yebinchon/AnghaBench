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
struct walker {int /*<<< orphan*/  (* cleanup ) (struct walker*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct walker*) ; 
 int /*<<< orphan*/  FUNC1 (struct walker*) ; 

void FUNC2(struct walker *walker)
{
	walker->cleanup(walker);
	FUNC0(walker);
}