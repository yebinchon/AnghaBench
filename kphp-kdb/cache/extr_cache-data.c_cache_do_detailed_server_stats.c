
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* hnext; } ;
typedef TYPE_1__ cache_stat_server_t ;
typedef int A ;


 TYPE_1__** HSS ;
 int STAT_SERVER_HASH_PRIME ;
 int assert (int) ;
 int cmp_stat_server_access (void const*,void const*) ;
 int cmp_stat_server_files (void const*,void const*) ;
 int cmp_stat_server_files_bytes (void const*,void const*) ;
 int cmp_stat_server_id (void const*,void const*) ;
 int qsort (TYPE_1__**,int,int,int (*) (void const*,void const*)) ;
 int tot_servers ;
 int vkprintf (int,char*,int) ;
 TYPE_1__** zmalloc0 (int) ;

int cache_do_detailed_server_stats (cache_stat_server_t ***R, int flags) {
  *R = ((void*)0);
  if (!tot_servers) {
    return 0;
  }
  cache_stat_server_t **A = zmalloc0 (tot_servers * sizeof (cache_stat_server_t *)), *S;
  int i, n = 0;
  for (i = 0; i < STAT_SERVER_HASH_PRIME; i++) {
    for (S = HSS[i]; S != ((void*)0); S = S->hnext) {
      assert (n < tot_servers);
      A[n++] = S;
    }
  }
  int(*compar)(const void *, const void *) = ((void*)0);
  switch (flags & 3) {
    case 0:
      compar = cmp_stat_server_id;
      break;
    case 1:
      compar = cmp_stat_server_access;
      break;
    case 2:
      compar = cmp_stat_server_files_bytes;
      break;
    case 3:
      compar = cmp_stat_server_files;
      break;
  }
  vkprintf (4, "cache_do_detailed_server_stats: n = %d\n", n);
  qsort (A, n, sizeof (A[0]), compar);
  *R = A;
  return n;
}
