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

/* Variables and functions */
 int /*<<< orphan*/  BOTLIB_AI_GENETIC_PARENTS_AND_CHILD_SELECTION ; 
 int FUNC0 (int /*<<< orphan*/ ,int,float*,int*,int*,int*) ; 

int FUNC1(int numranks, float *ranks, int *parent1, int *parent2, int *child) {
	return FUNC0( BOTLIB_AI_GENETIC_PARENTS_AND_CHILD_SELECTION, numranks, ranks, parent1, parent2, child );
}