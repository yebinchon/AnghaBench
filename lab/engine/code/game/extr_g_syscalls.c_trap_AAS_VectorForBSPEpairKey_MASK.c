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
typedef  int /*<<< orphan*/  vec3_t ;

/* Variables and functions */
 int /*<<< orphan*/  BOTLIB_AAS_VECTOR_FOR_BSP_EPAIR_KEY ; 
 int FUNC0 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 

int FUNC1(int ent, char *key, vec3_t v) {
	return FUNC0( BOTLIB_AAS_VECTOR_FOR_BSP_EPAIR_KEY, ent, key, v );
}