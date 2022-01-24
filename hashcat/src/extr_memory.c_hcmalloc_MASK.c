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
 void* FUNC0 (size_t const,int) ; 

void *FUNC1 (const size_t sz)
{
  //calloc is faster than malloc with big allocations, so just use that.
  void *p = FUNC0 (sz, 1);

  return (p);
}