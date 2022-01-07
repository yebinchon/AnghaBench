
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cur; scalar_t__ last; unsigned long long value64; int remaining; } ;
typedef TYPE_1__ gh_entry_t ;


 int FLAG_DOUBLE ;
 TYPE_1__** GH ;
 int GH_N ;
 int GH_mode ;
 int assert (int ) ;
 int load_heap_v (TYPE_1__*) ;

__attribute__((used)) static void gather_heap_advance (void) {
  gh_entry_t *H;
  int sz = (GH_mode & FLAG_DOUBLE) ? 2 : 1;
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
