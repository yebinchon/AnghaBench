
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int n; int remaining; int* cur; unsigned long long value64; } ;
typedef TYPE_1__ gh_entry_t ;


 int FLAG_GROUP_HASH ;
 int FLAG_SORT ;
 TYPE_1__** GH ;
 TYPE_1__* GH_E ;
 size_t GH_N ;
 int GH_mode ;
 int GH_n ;
 int GH_total ;
 int TL_SEARCH_RESULT ;
 int load_heap_v (TYPE_1__*) ;
 int vkprintf (int,char*,int,...) ;

__attribute__((used)) static int gather_heap_insert (int *data, int bytes) {
  if (bytes < 16) {
    vkprintf (2, "Bad result: bytes = %d\n", bytes);
    return -1;
  }
  if (*(data ++) != TL_SEARCH_RESULT) {
    vkprintf (2, "Bad result: data = %d\n", *(data - 1));
    return -1;
  }
  gh_entry_t *H = &GH_E[GH_N];
  H->n = *(data ++);
  if (H->n < 1 || H->n > 2) {
    vkprintf (2, "Bad result: H->n = %d\n", H->n);
    return -1;
  }
  GH_total += *(data ++);
  H->remaining = *(data ++);
  int size = H->n + ((GH_mode & FLAG_SORT) ? 1 : 0) + ((GH_mode & FLAG_GROUP_HASH) ? 2 : 0);
  if (H->remaining * size * 4 + 16 != bytes) {
    vkprintf (2, "Bad result: size = %d, H->remaining = %d, bytes = %d\n", size, H->remaining, bytes);
    return -1;
  }
  if (GH_n < H->n) {
    GH_n = H->n;
  }
  vkprintf (4, "gather_heap_insert: %d elements (size %d)\n", H->remaining, bytes - 16);
  if (!H->remaining) {
    return 0;
  }

  H->cur = data;
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
