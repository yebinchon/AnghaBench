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
 int /*<<< orphan*/  FUNC0 (int,char*,char*,int) ; 
 int MAX_EPAIRKEY ; 
 int FUNC1 (char*) ; 
 int qfalse ; 
 int qtrue ; 

int FUNC2(int ent, char *key, int *value)
{
	char buf[MAX_EPAIRKEY];
	
	*value = 0;
	if (!FUNC0(ent, key, buf, MAX_EPAIRKEY)) return qfalse;
	*value = FUNC1(buf);
	return qtrue;
}