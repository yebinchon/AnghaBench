#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int tot_lists; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__ Header ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int metafile_mode ; 
 scalar_t__* postponed ; 
 scalar_t__ FUNC3 (int,int) ; 

void FUNC4 (void) {
  int i;
  if (!postponed) {
    FUNC1 (!Header.tot_lists);
    return;
  }
  FUNC1 (postponed);
  for (i = 0; i < Header.tot_lists; i++) {
    //if (postponed[i]) {
    if (postponed[i]) {
      FUNC1 (FUNC3 (i, -1) >= 0);
    }
    if (postponed[i] && !(metafile_mode & 1)) {
      FUNC2 (FUNC0 (i));
    }
    //}
  }
}