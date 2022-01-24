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
typedef  scalar_t__* nb_allocator_t ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 void* FUNC1 (scalar_t__,int) ; 

void *FUNC2 (nb_allocator_t pH, int len) {
  if (!*pH) {
    *pH = FUNC0();
  }
  return FUNC1 (*pH, len);
}