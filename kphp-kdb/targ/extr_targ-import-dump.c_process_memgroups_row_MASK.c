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
struct lev_user_generic {int user_id; scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__* GA ; 
 scalar_t__* GB ; 
 scalar_t__* GC ; 
 scalar_t__* GT ; 
 int Gc ; 
 int* I ; 
 scalar_t__ LEV_TARG_GRTYPE_ADD ; 
 int MAX_GID ; 
 int MAX_GROUPS ; 
 int /*<<< orphan*/  adj_rec ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 size_t mg_confirmed ; 
 size_t mg_group_id ; 
 size_t mg_user_id ; 
 int user_id ; 
 struct lev_user_generic* FUNC2 (int) ; 

void FUNC3 (void) {
  struct lev_user_generic *E;
  int x = I[mg_group_id];
  user_id = I[mg_user_id];

  if (x <= 0 || x >= MAX_GID || !FUNC1(user_id) || I[mg_confirmed] != 2) {
    return;
  }

  if (x < Gc && GT[x] > 0) {
    E = FUNC2 (8);
    E->type = LEV_TARG_GRTYPE_ADD + GT[x];
    E->user_id = user_id;
    adj_rec++;
  }

  if (!GA) {
    GC = GB = GA = GT;
  }
  
  if (GC <= GT + MAX_GROUPS - 8) {
    FUNC0 (GC);
    ((int *) GC)[0] = x;
    ((int *) GC)[1] = user_id;
    GC += 8;
  }
}