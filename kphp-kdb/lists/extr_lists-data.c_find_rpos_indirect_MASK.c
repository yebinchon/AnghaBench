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
typedef  int /*<<< orphan*/  object_id_t ;
struct TYPE_3__ {int N; int /*<<< orphan*/ * IA; int /*<<< orphan*/  DA; } ;
typedef  TYPE_1__ listree_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3 (listree_t *LI, object_id_t object_id) {
  int l = -1, r = LI->N, x;

  /* A[j]:=DA[IA[j]] ; A[N-i-1]<x<=A[N-i] means A[l] < x <= A[r]; i = N - r */
  while (r - l > 1) {
    x = (l + r) / 2;
    if (FUNC2 (object_id, FUNC0 (LI->DA, LI->IA[x])) <= 0) {
      r = x;
    } else {
      l = x;
    }
  }
  FUNC1 (r >= 0 && r <= LI->N);
  return LI->N - r;
}