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
 int /*<<< orphan*/  binlogpos_filename ; 
 int binlogpos_pos ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3 (void) {
  if (binlogpos_pos >= 0) {
    if (FUNC2 (binlogpos_filename)) {
      FUNC1 ("unlink (%s) failed. %m\n", binlogpos_filename);
      FUNC0 (1);
    }
    binlogpos_pos = -1;
  }
}