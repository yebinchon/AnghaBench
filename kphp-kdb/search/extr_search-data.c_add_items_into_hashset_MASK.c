#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ filled; } ;

/* Variables and functions */
 scalar_t__ MAX_RES ; 
 scalar_t__ Q_hash_rating ; 
 int /*<<< orphan*/ * R ; 
 int R_cnt ; 
 scalar_t__ R_tot_undef_hash ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__ hs ; 

__attribute__((used)) static void FUNC3 (void) {
  int i;
  for (i = 0; i < R_cnt && hs.filled + R_tot_undef_hash <= MAX_RES; i++) {
    FUNC2 (&hs, Q_hash_rating < 0 ? FUNC0 (R[i]) : FUNC1 (R[i], Q_hash_rating));
  }
}