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
 int FLAG_BARE ; 
 long long FLAG_DEFAULT_CONSTRUCTOR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

void FUNC1 (long long flags) {
  int new_flags = 0;
  if (flags & 1) {
    new_flags |= FLAG_BARE;
  }
  if (flags & FLAG_DEFAULT_CONSTRUCTOR) {
    new_flags |= FLAG_DEFAULT_CONSTRUCTOR;
  }
  FUNC0 (new_flags);
}