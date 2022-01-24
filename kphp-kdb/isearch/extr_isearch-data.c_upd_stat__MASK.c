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
struct TYPE_2__ {int val; int prev_used; int next_bucket; int next_used; } ;

/* Variables and functions */
 int STAT_BUCKET_SIZE ; 
 int STAT_MAX_RATE ; 
 int STAT_ST ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int idn ; 
 TYPE_1__* q_entry ; 

void FUNC4 (int id, int add) {
  if (add != 1 && add != -1) {
    FUNC2 (0);
    return;
  }
  if (id < 0) {
    id = -id;
    add = -add;
  }

  FUNC2 (1 <= id && id <= idn);

  id = FUNC1 (id);

  id += STAT_ST;
  int old_bucket = (q_entry[id].val + STAT_BUCKET_SIZE - 1) / STAT_BUCKET_SIZE;
  FUNC2 (old_bucket < STAT_ST);

  q_entry[id].val += add;
  if (q_entry[id].val > STAT_MAX_RATE) {
    q_entry[id].val = STAT_MAX_RATE;
  }

  if (q_entry[id].val < 0) {
    q_entry[id].val = 0;
  }

  int new_bucket = (q_entry[id].val + STAT_BUCKET_SIZE - 1) / STAT_BUCKET_SIZE;
  FUNC2 (new_bucket < STAT_ST);

  if (new_bucket != old_bucket) {
    int p = old_bucket;
    if (old_bucket) {
      FUNC3 (id);

      if (old_bucket > new_bucket) {
        p = q_entry[old_bucket].prev_used;
      }

      if (q_entry[old_bucket].next_bucket == old_bucket) {
        p = q_entry[old_bucket].prev_used;
        int t = q_entry[p].next_used = q_entry[old_bucket].next_used;
        q_entry[t].prev_used = p;
      }
    }

    if (new_bucket) {
      if (q_entry[new_bucket].next_bucket == new_bucket) {
        int t = q_entry[new_bucket].next_used = q_entry[p].next_used;
        q_entry[t].prev_used = new_bucket;

        q_entry[p].next_used = new_bucket;
        q_entry[new_bucket].prev_used = p;
      }

      FUNC0 (id, new_bucket);
    }
  }
}