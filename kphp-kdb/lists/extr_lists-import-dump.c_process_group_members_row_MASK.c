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
 int* GT ; 
 size_t Gc ; 
 void** I ; 
 scalar_t__ LEV_LI_SET_ENTRY ; 
 int /*<<< orphan*/  adj_rec ; 
 scalar_t__ FUNC0 (size_t) ; 
 size_t gm_confirmed ; 
 size_t gm_group_id ; 
 size_t gm_user_id ; 
 size_t gm_who_invited ; 
 size_t list_id ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int,int) ; 

void FUNC2 (void) {
  int user_id = I[gm_user_id];
  int confirmed = I[gm_confirmed];
  int who_invited = I[gm_who_invited];
  list_id = I[gm_group_id];  /* ... that's list_id, actually ... */
  if (FUNC0 (list_id) < 0 || list_id <= 0 || user_id <= 0 || confirmed <= 0 || confirmed > 2) {
    return;
  }
  if (list_id < Gc) {
    if (GT[list_id] == 3) {
      confirmed += 4;
    } else if (GT[list_id] != 2) {
      return;
    }
  }
  FUNC1 (LEV_LI_SET_ENTRY + confirmed + 1, user_id, who_invited > 0 ? who_invited : 0);
  adj_rec++;
}