#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_2__ pair_int_int ;
struct TYPE_11__ {int dir; int ids_n; int new_ids_n; int ids_i; int ids_end; int new_ids_i; int new_ids_end; int /*<<< orphan*/ * new_local_ids; int /*<<< orphan*/ * new_ids; TYPE_4__* d; int /*<<< orphan*/  old_perm; int /*<<< orphan*/  ids; } ;
typedef  TYPE_3__ data_iterator ;
struct TYPE_9__ {int /*<<< orphan*/  new_v; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_12__ {int objects_n; TYPE_1__ id_to_local_id; } ;
typedef  TYPE_4__ data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,size_t) ; 
 void* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6 (data_iterator *it, data *d, int dir) {
  FUNC0 (dir == -1 || dir == +1);
  it->ids = d->id_to_local_id.x;
  it->old_perm = d->id_to_local_id.y;
  it->d = d;
  it->dir = dir;

  it->ids_n = d->objects_n;
  int new_n = it->new_ids_n = FUNC5 (&d->id_to_local_id.new_v);

  it->new_ids = FUNC2 (new_n * sizeof (int));
  it->new_local_ids = FUNC2 (new_n * sizeof (int));

  FUNC0 (FUNC4 (&d->id_to_local_id.new_v, it->new_ids, it->new_local_ids, new_n) == new_n);

  size_t b_size = sizeof (pair_int_int) * new_n;
  pair_int_int *b  = FUNC2 (b_size);
  int i;
  for (i = 0; i < new_n; i++) {
    b[i].x = it->new_ids[i];
    b[i].y = it->new_local_ids[i];
  }
  FUNC3 (b, new_n);
  for (i = 0; i < new_n; i++) {
    it->new_ids[i] = b[i].x;
    it->new_local_ids[i] = b[i].y;
  }
  FUNC1 (b, b_size);

  if (dir < 0) {
    it->ids_i = it->ids_n - 1;
    it->ids_end = -1;

    it->new_ids_i = it->new_ids_n - 1;
    it->new_ids_end = -1;
  } else {
    it->ids_i = 0;
    it->ids_end = it->ids_n;

    it->new_ids_i = 0;
    it->new_ids_end = it->new_ids_n;
  }

}