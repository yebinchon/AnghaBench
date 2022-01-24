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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int f_inited ; 
 void* fcurr ; 
 void* fd ; 
 void* fnames ; 
 void* fsize ; 
 void* FUNC1 (int) ; 

void FUNC2 (int fn) {
  FUNC0 (!f_inited);
  fnames = FUNC1 (sizeof (char *) * fn);
  fd = FUNC1 (sizeof (int) * fn);
  fsize = FUNC1 (sizeof (long long) * fn);
  fcurr = FUNC1 (sizeof (long long) * fn);
  f_inited = fn;
}