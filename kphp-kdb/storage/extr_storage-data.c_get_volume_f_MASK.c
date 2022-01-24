#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned long long volume_id; int /*<<< orphan*/  mutex_insert; int /*<<< orphan*/  mutex_write; } ;
typedef  TYPE_1__ volume_t ;

/* Variables and functions */
 unsigned int HASH_VOLUMES_MOD ; 
 TYPE_1__** HP ; 
 scalar_t__ MAX_VOLUMES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ volumes ; 
 TYPE_1__* FUNC2 (int) ; 

volume_t *FUNC3 (unsigned long long volume_id, int force) {
  unsigned int h1 = (unsigned int) volume_id % HASH_VOLUMES_MOD;
  if (HP[h1]) {
    if (HP[h1]->volume_id == volume_id) {
      return HP[h1];
    }
    if ( (h1 += 13) >= HASH_VOLUMES_MOD) {
      h1 -= HASH_VOLUMES_MOD;
    }
  }
  if (!force) {
    return NULL;
  }
  FUNC0 (volumes < MAX_VOLUMES);
  volumes++;
  volume_t *V = FUNC2 (sizeof (volume_t));
  V->volume_id = volume_id;
  FUNC1 (&V->mutex_write, NULL);
  FUNC1 (&V->mutex_insert, NULL);
  return HP[h1] = V;
}