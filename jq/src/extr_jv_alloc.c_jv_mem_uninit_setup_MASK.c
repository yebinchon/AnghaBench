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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char jv_mem_uninitialised ; 
 char* FUNC1 (int) ; 

__attribute__((constructor)) void FUNC2(){
  // ignore warning that this reads uninitialized memory - that's the point!
#ifndef __clang_analyzer__
  char* p = malloc(1);
  jv_mem_uninitialised = *p;
  free(p);
#endif
}