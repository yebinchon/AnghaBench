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
 int WB ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  targ_fd ; 
 int /*<<< orphan*/  targ_fname ; 
 int true_wr_bytes ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int,int /*<<< orphan*/ ) ; 
 int wptr ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int wst ; 

__attribute__((used)) static void FUNC5 (void) {
  int a, b = wptr - wst;
  FUNC0 (b >= 0);
  if (!b) {
    wptr = wst = WB;
    return;
  }
  a = FUNC4 (targ_fd, wst, b);
  if (a > 0) {
    true_wr_bytes += a;
  }
  if (a < b) {
    FUNC2 ("error writing to %s: %d bytes written out of %d: %m\n", targ_fname, a, b);
    FUNC1 (3);
  }

  FUNC3  (1, "%d bytes written to %s\n", a, targ_fname);

  wptr = wst = WB;
}