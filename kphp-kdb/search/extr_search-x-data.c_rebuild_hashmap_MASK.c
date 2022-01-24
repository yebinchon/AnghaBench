#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int size; int n; int /*<<< orphan*/  filled; TYPE_1__* h; } ;
struct TYPE_6__ {long long key; int value; } ;

/* Variables and functions */
 int MAX_RES ; 
 int /*<<< orphan*/  Q_limit ; 
 int /*<<< orphan*/ * R ; 
 int* RS ; 
 int R_cnt ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 long long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*,long long,int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 TYPE_2__ hm ; 
 char* last_search_query ; 
 char* FUNC7 () ; 
 int /*<<< orphan*/  rebuild_hashmap_calls ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (int,char*,int,int /*<<< orphan*/ ) ; 

void FUNC9 (void) {
  rebuild_hashmap_calls++;
  FUNC8 (2, "rebuild_hashmap: old hashmap size = %d, Q_limit = %d\n", hm.size, Q_limit);
  int i;
  int n = hm.n << 1;

  if (n > MAX_RES + 10) {
    n = MAX_RES + 10;
  }
  FUNC4 (&hm);
  if (!FUNC6 (&hm, n)) {
    FUNC2 (stderr, "Not enough memory for allocate hash table for storing %d entries.\n", n);
    FUNC1 (2);
  }
  for (i = 1; i <= R_cnt; i++) {
    long long hc = FUNC3 (R[i]);
    if (hc) {
      int slot;
      int r = FUNC5 (&hm, hc, &slot);
      if (r) {
        FUNC2 (stderr, "log_cur_pos ()\t%s\n", FUNC7 ());
        FUNC2 (stderr, "last_search_query\t%s\n", last_search_query);
        FUNC0 (!r);
      }
      hm.h[slot].key = hc;
      hm.h[slot].value = i;
      hm.filled++;
      RS[i] = slot;
    } else {
      RS[i] = hm.size;
    }
  }
}