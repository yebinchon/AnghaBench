#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct item_with_rating {int V; int /*<<< orphan*/ * I; } ;
typedef  int /*<<< orphan*/  item_t ;
struct TYPE_6__ {int size; scalar_t__ filled; scalar_t__ n; TYPE_1__* h; } ;
struct TYPE_5__ {int value; long long key; } ;

/* Variables and functions */
 int Q_limit ; 
 int /*<<< orphan*/ ** R ; 
 size_t* RS ; 
 scalar_t__* RV ; 
 int R_cnt ; 
 int R_tot ; 
 int /*<<< orphan*/  R_tot_groups ; 
 int /*<<< orphan*/  R_tot_undef_hash ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 long long FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,long long const,int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct item_with_rating*,int,int) ; 
 TYPE_2__ hm ; 
 int order ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  stderr ; 

void FUNC9 (item_t *I, int priority) {
  if (R_tot == 1) {
    int hs = 2 * Q_limit;
    if (hs < 600) { hs = 600; }
    if (!FUNC6 (&hm, hs)) {
      FUNC4 (stderr, "Not enough memory for allocate hash table\n");
      FUNC2 (2);
    }
  }

  const long long hc = FUNC3 (I);

  if (!hc) {
    R_tot_undef_hash++;
  }

  struct item_with_rating tmp, *E = &tmp;
  E->V = FUNC1 (I, priority);

  if (order == 2) {
    E->V = -(E->V + 1);
  }

  /* optimization: don't look into hash table if current item is worser */
  if (R_cnt == Q_limit && E->V >= RV[1]) { return; }

  int slot = hm.size; /* items with unset hash map into special last slot of hashtable */
  E->I = I;

  //vkprintf (4, "E->I->item_id = %016llx, E->V = %d\n", E->I->item_id, E->V);

  if (hc && FUNC5 (&hm, hc, &slot)) {
    /* change group */
    int pos = hm.h[slot].value;
    if (pos != -1) {
      /* item exists in heap and hash */
      FUNC0 (pos >= 1 && pos <= R_cnt);
      if (E->V < RV[pos]) {
        /* current value is better */
        FUNC7 (E, pos, slot);
      }
    } else {
      /* item should be inserted into heap */
      hm.h[RS[1]].value = -1; /* delete item from heap */
      FUNC7 (E, 1, slot);
    }
  } else {
    /* add new group */
    R_tot_groups++;
    if (hc) {
      if (hm.filled >= hm.n) {
        FUNC8 ();
        FUNC5 (&hm, hc, &slot);
      }
      hm.filled++;
      hm.h[slot].key = hc;
    }
    if (R_cnt == Q_limit) {
      hm.h[RS[1]].value = -1; /* deleted from heap */
      FUNC7 (E, 1, slot);
    } else {
      int i = ++R_cnt;
      while (i > 1) {
        int j = (i >> 1);
        if (RV[j] >= E->V) { break; }
        R[i] = R[j];
        RV[i] = RV[j];
        hm.h[RS[i] = RS[j]].value = i;
        i = j;
      }
      R[i] = E->I;
      RV[i] = E->V;
      hm.h[RS[i] = slot].value = i;
    }
  }
}