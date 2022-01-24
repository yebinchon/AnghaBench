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
 int /*<<< orphan*/  BOTLIB_AI_LOAD_CHARACTER ; 
 int /*<<< orphan*/  FUNC0 (float) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int FUNC2(char *charfile, float skill) {
	return FUNC1( BOTLIB_AI_LOAD_CHARACTER, charfile, FUNC0(skill));
}