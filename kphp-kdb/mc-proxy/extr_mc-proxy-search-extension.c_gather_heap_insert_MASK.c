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
struct gather_entry {scalar_t__ num; int res_read; int res_bytes; scalar_t__ data; } ;
struct TYPE_5__ {int remaining; unsigned long long value64; scalar_t__ last; scalar_t__ cur; } ;
typedef  TYPE_1__ gh_entry_t ;

/* Variables and functions */
 TYPE_1__** GH ; 
 TYPE_1__* GH_E ; 
 size_t GH_N ; 
 int GH_mode ; 
 int GH_total ; 
 scalar_t__ HINTS_MERGE_EXTENSION ; 
 size_t MAX_CLUSTER_SERVERS ; 
 scalar_t__ SEARCHX_EXTENSION ; 
 scalar_t__ SEARCH_EXTENSION ; 
 scalar_t__ TARG_EXTENSION ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int g_double ; 
 int g_hash ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

__attribute__((used)) static int FUNC3 (struct gather_entry *GE) {
  int cnt, cnt2, sz;
  gh_entry_t *H;
  FUNC0 (GH_N < MAX_CLUSTER_SERVERS);
  if (GE->num <= 0 || GE->res_read < 8 || !GE->data) {
    return 0;
  }
  cnt2 = cnt = (GE->res_read >> 2) - 1;
  if (SEARCH_EXTENSION || SEARCHX_EXTENSION) {
    sz = (GH_mode & g_double) ? 3 : 2;
  } else if (TARG_EXTENSION) {
    sz = (GH_mode & g_double) ? 2 : 1;
  } else if (HINTS_MERGE_EXTENSION) {
    sz = 3;
  } else {
    FUNC0 (0);
  }
  if (GH_mode & g_hash) { sz += 2; }
  cnt /= sz;
  cnt2 = cnt * sz;
  if (verbosity >= 3) {
    FUNC1 (stderr, "gather_heap_insert: %d elements (size %d)\n", cnt, (GE->res_read >> 2) - 1);
  }
  if (cnt <= 0) { 
    return 0;
  }
  GH_total += cnt;

  H = &GH_E[GH_N];
  H->remaining = cnt;
  H->cur = GE->data;
  H->last = GE->data + GE->res_bytes / 4 + 1;
  FUNC2 (H);

  int i = ++GH_N, j;
  unsigned long long value64 = H->value64;
  while (i > 1) {
    j = (i >> 1);
    if (GH[j]->value64 <= value64) { break; }
    GH[i] = GH[j];
    i = j;
  }
  GH[i] = H;

  return 1;
}