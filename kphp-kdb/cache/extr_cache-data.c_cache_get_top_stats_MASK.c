#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct cache_uri {int /*<<< orphan*/ * data; } ;
struct cache_top_stats {int selection_size; int known_size_files; long long sum_filesize; double weighted_sum_filesize; int sum_acounter; } ;
struct amortization_counter {scalar_t__ value; } ;
typedef  enum cache_sorted_order { ____Placeholder_cache_sorted_order } cache_sorted_order ;
struct TYPE_8__ {struct cache_uri** H; } ;
typedef  TYPE_1__ cache_heap_t ;
struct TYPE_9__ {int pos; } ;
typedef  TYPE_2__ cache_buffer_t ;
struct TYPE_10__ {int value; } ;
typedef  int /*<<< orphan*/  S ;

/* Variables and functions */
 int /*<<< orphan*/ * TAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int) ; 
 int FUNC3 (TYPE_1__*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long long FUNC4 (struct cache_uri*) ; 
 TYPE_3__* cum_access_counters ; 
 size_t heap_acounter_id ; 
 size_t heap_acounter_off ; 
 int /*<<< orphan*/  FUNC5 (struct cache_top_stats*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int,int) ; 
 int uries ; 

int FUNC7 (int T, enum cache_sorted_order order, int limit, char *output, int olen) {
  cache_heap_t Heap;
  struct cache_top_stats S;
  FUNC5 (&S, 0, sizeof (S));
  int i;
  S.selection_size = FUNC3 (&Heap, T, order, limit, 0, 0, 0);
  if (S.selection_size < 0) {
    return -1;
  }
  for (i = 1; i <= S.selection_size; i++) {
    struct cache_uri *U = Heap.H[i];
    struct amortization_counter *C = ((struct amortization_counter *) &U->data[heap_acounter_off]);
    long long sz = FUNC4 (U);
    if (sz >= 0) {
      S.known_size_files++;
      S.sum_filesize += sz;
      S.weighted_sum_filesize += ((double) C->value) * sz;
    }
    S.sum_acounter += C->value;
  }
  FUNC0 (&TAT[heap_acounter_id], cum_access_counters + heap_acounter_id, 0);

  cache_buffer_t b;
  FUNC1 (&b, output, olen);
  FUNC2 (&b, "selection_size\t%d\n", S.selection_size);
  FUNC2 (&b, "total_files\t%lld\n", uries);
  FUNC2 (&b, "selection_relative_size\t%.10lf\n", FUNC6 (S.selection_size, uries));
  FUNC2 (&b, "known_size_files\t%d\n", S.known_size_files);
  FUNC2 (&b, "sum_acounter\t%.10lg\n", S.sum_acounter);
  FUNC2 (&b, "relative_sum_acounter\t%.10lf\n", FUNC6 (S.sum_acounter, cum_access_counters[heap_acounter_id].value));
  FUNC2 (&b, "sum_filesize\t%lld\n", S.sum_filesize);
  FUNC2 (&b, "weighted_sum_filesize\t%.10lg\n", S.weighted_sum_filesize);
  if (b.pos >= olen) {
    return -1;
  }
  return b.pos;
}