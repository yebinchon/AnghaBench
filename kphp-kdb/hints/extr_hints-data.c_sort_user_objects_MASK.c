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
typedef  int /*<<< orphan*/  user ;

/* Variables and functions */
 int MAX_CNT ; 
 int /*<<< orphan*/  NOAIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  bad_requests ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*,int,int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int,int,int*,int /*<<< orphan*/ *,int*) ; 
 int* heap ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int,int,int) ; 
 int* objects_to_sort ; 
 int FUNC9 (int /*<<< orphan*/ *,long long) ; 
 long long FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * weight ; 

int FUNC12 (int user_id, int object_cnt, long long *obj, int max_cnt, int num, int need_rand) {
  if (!FUNC2 (user_id) || !FUNC1 (num)) {
    bad_requests++;
    return -1;
  }

  int local_user_id = FUNC5 (user_id);
  if (local_user_id == 0) {
    return 0;
  }
  FUNC0 (local_user_id > 0);

  user *u = FUNC3 (user_id);
  FUNC0 (u != NULL);

  if (FUNC7 (u, local_user_id, NOAIO) == NULL) {
    return -2;
  }

  FUNC0 (obj != NULL);

  int i, j, k, t;

  if (object_cnt > MAX_CNT) {
    object_cnt = MAX_CNT;
  }

  if (max_cnt > MAX_CNT) {
    max_cnt = MAX_CNT;
  }

  if (max_cnt < 0) {
    max_cnt = 0;
  }

  int n = 0;
  for (i = 0; i < object_cnt; i++) {
    int lid = FUNC9 (u, obj[i]);
    if (lid) {
      objects_to_sort[n++] = lid;
    }
  }

  int heap_size = 0;
  if (max_cnt) {
    for (i = 0; i < n; i++) {
      if (need_rand) {
        heap[++heap_size] = objects_to_sort[i];
      } else {
        if (heap_size < max_cnt) {
          heap[++heap_size] = objects_to_sort[i];
          j = heap_size;
          while (j > 1 && FUNC8 (u, heap[j], heap[k = j / 2], num) < 0) {
            t = heap[j], heap[j] = heap[k], heap[k] = t;
            j = k;
          }
        } else if (FUNC8 (u, heap[1], objects_to_sort[i], num) < 0) {
          heap[1] = objects_to_sort[i];
          FUNC4 (u, heap, heap_size, num);
        }
      }
    }
  }

  if (need_rand) {
    for (i = 1; i <= heap_size; i++) {
      weight[i - 1] = FUNC11 (u, heap[i], num);
    }
    n = FUNC6 (max_cnt, heap_size, heap + 1, weight, objects_to_sort);
  } else {
    n = heap_size;
    while (heap_size) {
      objects_to_sort[heap_size - 1] = heap[1];
      heap[1] = heap[heap_size--];
      FUNC4 (u, heap, heap_size, num);
    }
  }

  for (i = 0; i < n; i++) {
    obj[i] = FUNC10 (u, objects_to_sort[i]);
  }

  return n;
}