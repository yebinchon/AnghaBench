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
struct TYPE_2__ {scalar_t__ h; int filled; } ;

/* Variables and functions */
 int MAX_RES ; 
 scalar_t__ Q_limit ; 
 scalar_t__ R_cnt ; 
 int R_tot_groups ; 
 int R_tot_undef_hash ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  hm ; 
 TYPE_1__ hs ; 

__attribute__((used)) static void FUNC4 (void) {
  if (Q_limit <= 0) {
    if (hs.h == 0 && R_cnt > 0) {
      FUNC2 (R_cnt);
      FUNC0 ();
    }
    R_tot_groups = hs.filled + R_tot_undef_hash;
    if (R_tot_groups > MAX_RES) { R_tot_groups = -1; }
    return;
  }
  if (!R_cnt) { return; }
  FUNC1 (&hm);
  FUNC3 ();
}