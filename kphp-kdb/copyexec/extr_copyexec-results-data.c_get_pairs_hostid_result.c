
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree_t ;
struct pair_hostid_result {int host_id; scalar_t__ result; } ;
typedef int a ;
struct TYPE_2__ {unsigned long long volume_id; int disabled; } ;


 TYPE_1__** HOSTS ;
 int assert (int) ;
 struct pair_hostid_result* calloc (int,int) ;
 int hosts ;
 int tree_get_pairs_hostid_result (struct pair_hostid_result*,int*,unsigned long long,int *) ;
 int vkprintf (int,char*,int) ;

__attribute__((used)) static struct pair_hostid_result *get_pairs_hostid_result (int *k, unsigned long long volume_id, tree_t *P) {
  *k = 0;
  struct pair_hostid_result *a = calloc (hosts, sizeof (a[0]));
  if (a == ((void*)0)) {
    return ((void*)0);
  }
  tree_get_pairs_hostid_result (a, k, volume_id, P);
  const int first_host_id = (!(*k)) ? 1 : (a[(*k)-1].host_id + 1);
  int i;
  for (i = first_host_id; i <= hosts; i++) {
    if (HOSTS[i]->volume_id == volume_id && !HOSTS[i]->disabled) {
      assert ((*k) < hosts);
      a[*k].host_id = i;
      a[*k].result = 0;
      (*k)++;
    }
  }
  vkprintf (4, "get_pairs_hostid_result: *k = %d\n", *k);
  return a;
}
