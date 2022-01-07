
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cur; scalar_t__ last; unsigned long long value64; int remaining; } ;
typedef TYPE_1__ gh_entry_t ;


 TYPE_1__** GH ;
 int GH_N ;
 int GH_mode ;
 scalar_t__ HINTS_MERGE_EXTENSION ;
 scalar_t__ SEARCHX_EXTENSION ;
 scalar_t__ SEARCH_EXTENSION ;
 scalar_t__ TARG_EXTENSION ;
 int assert (int ) ;
 int g_double ;
 int g_hash ;
 int load_heap_v (TYPE_1__*) ;

__attribute__((used)) static void gather_heap_advance (void) {
  gh_entry_t *H;
  int sz;
  if (SEARCH_EXTENSION || SEARCHX_EXTENSION) {
    sz = (GH_mode & g_double) ? 3 : 2;
  } else if (TARG_EXTENSION) {
    sz = (GH_mode & g_double) ? 2 : 1;
  } else if (HINTS_MERGE_EXTENSION) {
    sz = 3;
  } else {
    assert (0);
  }
  if (GH_mode & g_hash) { sz += 2; }
  if (!GH_N) { return; }
  H = GH[1];
  H->cur += sz;
  if (!--H->remaining) {
    H = GH[GH_N--];
    if (!GH_N) { return; }
  } else {
    if (H->cur >= H->last) {
      assert (0);
    }
    load_heap_v (H);
  }
  int i = 1, j;
  unsigned long long value64 = H->value64;
  while (1) {
    j = i*2;
    if (j > GH_N) { break; }
    if (j < GH_N && GH[j+1]->value64 < GH[j]->value64) { j++; }
    if (value64 <= GH[j]->value64) { break; }
    GH[i] = GH[j];
    i = j;
  }
  GH[i] = H;
}
