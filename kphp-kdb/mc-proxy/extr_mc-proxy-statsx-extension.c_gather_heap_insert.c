
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct gather_entry {int res_read; int num; int res_bytes; scalar_t__ data; } ;
struct TYPE_5__ {int remaining; unsigned long long value64; scalar_t__ last; scalar_t__ cur; } ;
typedef TYPE_1__ gh_entry_t ;


 int FLAG_DOUBLE ;
 TYPE_1__** GH ;
 TYPE_1__* GH_E ;
 size_t GH_N ;
 int GH_mode ;
 int GH_total ;
 size_t MAX_CLUSTER_SERVERS ;
 int assert (int) ;
 int fprintf (int ,char*,int,int,...) ;
 int load_heap_v (TYPE_1__*) ;
 int stderr ;
 int verbosity ;

__attribute__((used)) static int gather_heap_insert (struct gather_entry *GE) {
  int cnt, cnt2, sz;
  gh_entry_t *H;
  assert (GH_N < MAX_CLUSTER_SERVERS);
  if (GE->res_read < 4 || !GE->data) {
    if (verbosity >= 3) {
      fprintf (stderr, "GE->num = %d, GE->res_read = %d, GE->data = %p\n", GE->num, GE->res_read, GE->data);
    }
    return 0;
  }
  cnt2 = cnt = (GE->res_read >> 2);
  sz = (GH_mode & FLAG_DOUBLE) ? 2 : 1;
  cnt /= sz;
  cnt2 = cnt * sz;
  if (verbosity >= 3) {
    fprintf (stderr, "gather_heap_insert: %d elements (size %d)\n", cnt, (GE->res_read >> 2) - 1);
  }
  if (cnt <= 0) {
    return 0;
  }
  GH_total += cnt;

  H = &GH_E[GH_N];
  H->remaining = cnt;
  H->cur = GE->data;
  H->last = GE->data + GE->res_bytes / 4 + 1;
  load_heap_v (H);

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
