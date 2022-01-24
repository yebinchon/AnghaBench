#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* hnext; } ;
typedef  TYPE_1__ cache_stat_server_t ;
typedef  int /*<<< orphan*/  A ;

/* Variables and functions */
 TYPE_1__** HSS ; 
 int STAT_SERVER_HASH_PRIME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (void const*,void const*) ; 
 int FUNC2 (void const*,void const*) ; 
 int FUNC3 (void const*,void const*) ; 
 int FUNC4 (void const*,void const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**,int,int,int (*) (void const*,void const*)) ; 
 int tot_servers ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int) ; 
 TYPE_1__** FUNC7 (int) ; 

int FUNC8 (cache_stat_server_t ***R, int flags) {
  *R = NULL;
  if (!tot_servers) {
    return 0;
  }
  cache_stat_server_t **A = FUNC7 (tot_servers * sizeof (cache_stat_server_t *)), *S;
  int i, n = 0;
  for (i = 0; i < STAT_SERVER_HASH_PRIME; i++) {
    for (S = HSS[i]; S != NULL; S = S->hnext) {
      FUNC0 (n < tot_servers);
      A[n++] = S;
    }
  }
  int(*compar)(const void *, const void *) = NULL;
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
  FUNC6 (4, "cache_do_detailed_server_stats: n = %d\n", n);
  FUNC5 (A, n, sizeof (A[0]), compar);
  *R = A;
  return n;
}