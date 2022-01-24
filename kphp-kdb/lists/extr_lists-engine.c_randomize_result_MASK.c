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
typedef  int /*<<< orphan*/  array_object_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static int FUNC3 (array_object_id_t *A, int N, int M, int result_entry_ints) {
  int i, j = 0;
  for (i = 0; i < N; i++) {
    if (FUNC2(N-i) < M) {
      FUNC1 (A + j*result_entry_ints, A + i*result_entry_ints, result_entry_ints * 4);
      j++;
      if (!--M) {
        return j;
      }
    }
  }
  FUNC0 (!M);
  return j;
}