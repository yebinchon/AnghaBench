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
struct TYPE_3__ {int docs; int idx_docs; int pos_capacity; unsigned long long** Pos; int /*<<< orphan*/  mutex_insert; } ;
typedef  TYPE_1__ volume_t ;

/* Variables and functions */
 unsigned long long STORAGE_SECRET_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long long* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned long long** FUNC4 (unsigned long long**,int) ; 
 int /*<<< orphan*/  tot_docs ; 

__attribute__((used)) static int FUNC5 (volume_t *V, unsigned long long secret, unsigned long long file_pos) {
  const unsigned long long pos = file_pos | (secret & STORAGE_SECRET_MASK);
  tot_docs++;
  FUNC2 (&V->mutex_insert);
  int local_id = ++(V->docs);
  int i = local_id - V->idx_docs - 1;
  FUNC0 (i >= 0);
  int k = i & 2047;
  i >>= 11;
  if (!k) {
    unsigned long long *a = FUNC1 (2048, 8);
    FUNC0 (a != NULL);
    a[0] = pos;
    if (i == V->pos_capacity) {
      int new_capacity = 1 + (V->pos_capacity << 1);
      unsigned long long **b = FUNC4 (V->Pos, new_capacity * sizeof (V->Pos[0]));
      FUNC0 (b != NULL);
      V->Pos = b;
      V->pos_capacity = new_capacity;
    }
    FUNC0 (i < V->pos_capacity);
    V->Pos[i] = a;
  } else {
    FUNC0 (i < V->pos_capacity);
    V->Pos[i][k] = pos;
  }
  FUNC3 (&V->mutex_insert);
  return local_id;
}