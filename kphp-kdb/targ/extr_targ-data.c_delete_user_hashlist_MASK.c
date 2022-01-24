#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hash_t ;
struct TYPE_4__ {int len; int /*<<< orphan*/ * A; } ;
typedef  TYPE_1__ hash_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int) ; 

void FUNC2 (int uid, hash_list_t *H) {
  int i;
  if (!H || H->len <= 0) { return; }
  for (i = 0; i < H->len; i++) {
    FUNC0 (uid, H->A[i]);
  }
  FUNC1 (H, 8 + H->len * sizeof(hash_t), 8);
}