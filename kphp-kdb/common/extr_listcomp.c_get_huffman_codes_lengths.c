
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccp_list_entry {int freq; int leaf_value; struct ccp_list_entry* next; } ;
typedef int dyn_mark_t ;
typedef int E ;


 int assert (int) ;
 int cmp_ccp_list_entries ;
 int dyn_mark (int ) ;
 int dyn_release (int ) ;
 int llhuf_incr_code_lengths (int*,struct ccp_list_entry*) ;
 struct ccp_list_entry* package_merge (struct ccp_list_entry*,struct ccp_list_entry*) ;
 int qsort (struct ccp_list_entry*,int,int,int ) ;
 struct ccp_list_entry* zmalloc (int) ;
 int* zmalloc0 (int) ;
 struct ccp_list_entry* zmalloc_ccp_list (struct ccp_list_entry*,int) ;

int* get_huffman_codes_lengths (int *freq, int N, int L, int *alphabet_size) {
  int k;
  assert (L >= 2);
  int *l = zmalloc0 (N * sizeof (int));
  dyn_mark_t E_mark;
  dyn_mark (E_mark);
  struct ccp_list_entry *E = zmalloc (N * sizeof (struct ccp_list_entry));
  int M = 0;
  for (k = 0; k < N; k++) {
    if (freq[k]) {
      E[M].freq = freq[k];
      E[M].leaf_value = k;
      M++;
    }
  }
  *alphabet_size = M;
  assert (M > 0);
  qsort (E, M, sizeof (E[0]), cmp_ccp_list_entries);
  if (M == 1) {

    l[E[0].leaf_value] = L;
    dyn_release (E_mark);
    return l;
  }
  struct ccp_list_entry *x = zmalloc_ccp_list (E, M);
  for (k = L-1; k >= 1; k--) {
    x = package_merge (x, zmalloc_ccp_list (E, M));
  }
  x = package_merge (x, ((void*)0));
  for (k = 1; x != ((void*)0); k++) {
    if (k < M) {
      llhuf_incr_code_lengths (l, x);
    }
    x = x->next;
  }
  dyn_release (E_mark);
  return l;
}
