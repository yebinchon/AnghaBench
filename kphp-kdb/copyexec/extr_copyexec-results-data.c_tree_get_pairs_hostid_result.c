
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int x; struct TYPE_4__* right; scalar_t__ value; struct TYPE_4__* left; } ;
typedef TYPE_1__ tree_t ;
struct pair_hostid_result {int host_id; scalar_t__ result; } ;
struct TYPE_5__ {unsigned long long volume_id; int disabled; } ;


 TYPE_3__** HOSTS ;
 int assert (int) ;
 int hosts ;

__attribute__((used)) static void tree_get_pairs_hostid_result (struct pair_hostid_result *a, int *k, unsigned long long volume_id, tree_t *P) {
  if (P == ((void*)0)) {
    return;
  }
  tree_get_pairs_hostid_result (a, k, volume_id, P->left);
  const int first_host_id = (!(*k)) ? 1 : (a[(*k)-1].host_id + 1);
  int i;

  for (i = first_host_id; i < P->x; i++) {
    if (HOSTS[i]->volume_id == volume_id && !HOSTS[i]->disabled) {
      assert ((*k) < hosts);
      a[*k].host_id = i;
      a[*k].result = 0;
      (*k)++;
    }
  }

  assert ((*k) < hosts);
  assert (HOSTS[P->x]->volume_id == volume_id);
  if (!HOSTS[P->x]->disabled) {
    a[*k].host_id = P->x;
    a[*k].result = P->value;
    (*k)++;
  }
  tree_get_pairs_hostid_result (a, k, volume_id, P->right);
}
