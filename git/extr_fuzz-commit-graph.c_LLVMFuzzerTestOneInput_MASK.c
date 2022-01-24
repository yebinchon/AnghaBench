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
typedef  int /*<<< orphan*/  uint8_t ;
struct commit_graph {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct commit_graph*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct commit_graph* FUNC2 (void*,int,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  the_repository ; 

int FUNC4(const uint8_t *data, size_t size)
{
	struct commit_graph *g;

	FUNC1();
	g = FUNC2((void *)data, -1, size);
	FUNC3(the_repository);
	FUNC0(g);

	return 0;
}