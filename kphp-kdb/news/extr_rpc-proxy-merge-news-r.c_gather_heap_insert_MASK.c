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
struct news_id {int dummy; } ;
struct gather_entry {int bytes; int* data; } ;
struct TYPE_5__ {int remaining; int* cur; int* last; struct news_id id; } ;
typedef  TYPE_1__ gh_entry_t ;

/* Variables and functions */
 TYPE_1__** GH ; 
 TYPE_1__* GH_E ; 
 size_t GH_N ; 
 int GH_total ; 
 size_t MAX_CLUSTER_SERVERS ; 
 int TL_VECTOR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (struct news_id,struct news_id) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

__attribute__((used)) static int FUNC4 (struct gather_entry *GE) {
  gh_entry_t *H;  
  FUNC0 (GH_N < MAX_CLUSTER_SERVERS);
  int sz = 6;
  if (GE->bytes < 8 || GE->data[0] != TL_VECTOR || GE->data[1] <= 0 || GE->bytes != 8 + 4 * sz * (GE->data[1])) {
    return 0;
  }
  if (verbosity >= 3) {
    FUNC1 (stderr, "gather_heap_insert: %d elements (size %d)\n", GE->data[1], GE->bytes);
  }
  int cnt = GE->data[1];
  GH_total += cnt;

  H = &GH_E[GH_N];
  H->remaining = cnt;
  H->cur = GE->data + 2;
  H->last = GE->data + 2 + cnt * sz;
  FUNC2 (H);

  int i = ++GH_N, j;
  struct news_id id = H->id;
  while (i > 1) {
    j = (i >> 1);
    if (FUNC3 (GH[j]->id, id) <= 0) { break; }
    GH[i] = GH[j];
    i = j;
  }
  GH[i] = H;

  return 1;
}