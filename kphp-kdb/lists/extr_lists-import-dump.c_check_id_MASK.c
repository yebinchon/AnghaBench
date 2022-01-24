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
 unsigned int split_mod ; 
 unsigned int split_rem ; 

int FUNC1( unsigned id ) {
  // assert (id >= 0 && id < split_mod * MAX_USERS);
  FUNC0 (id >= 0);
  return id % split_mod == split_rem;
}