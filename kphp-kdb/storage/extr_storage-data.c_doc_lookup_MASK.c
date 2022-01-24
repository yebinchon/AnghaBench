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
struct TYPE_3__ {int docs; int idx_docs; unsigned long long* Idx_Pos; unsigned long long** Pos; int /*<<< orphan*/  mutex_insert; } ;
typedef  TYPE_1__ volume_t ;

/* Variables and functions */
 unsigned long long FILE_OFFSET_MASK ; 
 int STORAGE_ERR_ILLEGAL_LOCAL_ID ; 
 int STORAGE_ERR_WRONG_SECRET ; 
 unsigned long long STORAGE_SECRET_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2 (volume_t *V, int local_id, unsigned long long secret, unsigned long long *file_pos) {
  FUNC0 (&V->mutex_insert);
  if (local_id < 1 || local_id > V->docs) {
    FUNC1 (&V->mutex_insert);
    return STORAGE_ERR_ILLEGAL_LOCAL_ID;
  }
  unsigned long long pos;
  if (local_id <= V->idx_docs) {
    pos = V->Idx_Pos[local_id];
  } else {
    int i = local_id - V->idx_docs - 1;
    pos = V->Pos[i >> 11][i & 2047];
  }
  FUNC1 (&V->mutex_insert);

  *file_pos = pos & FILE_OFFSET_MASK;

  if ((secret ^ pos) & STORAGE_SECRET_MASK) {
    return STORAGE_ERR_WRONG_SECRET;
  }

  return 0;
}