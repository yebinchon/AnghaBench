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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3 (long long flags) {
  int new_flags = 0;
  if (flags & 1) {
    new_flags |= FLAG_BARE;
  }
  if (new_flags & FLAG_BARE) {
    FUNC0 ("Sorry, bare vars are not (yet ?) supported.\n");
    FUNC1 (!(new_flags & FLAG_BARE));
  }
  FUNC2 (new_flags);
}