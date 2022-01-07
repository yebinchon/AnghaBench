
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int root; } ;
typedef TYPE_1__ transaction_t ;
struct pair_hostid_result {size_t host_id; } ;
struct TYPE_5__ {char* hostname; } ;


 TYPE_3__** HOSTS ;
 int assert (int) ;
 int filter_pairs_hostid_result (struct pair_hostid_result*,int*,unsigned int,unsigned int) ;
 int free (struct pair_hostid_result*) ;
 struct pair_hostid_result* get_pairs_hostid_result (int*,unsigned long long,int ) ;
 TYPE_1__* get_transaction_f (unsigned long long,int,int ) ;
 char* malloc (int) ;
 int strcpy (char*,char*) ;
 char* strdup (char*) ;
 scalar_t__ strlen (char*) ;
 int vkprintf (int,char*,char*,char*) ;

char *get_hosts_list (unsigned long long volume_id, int transaction_id, unsigned result_or, unsigned result_and) {
  transaction_t *T = get_transaction_f (volume_id, transaction_id, 0);
  if (T == ((void*)0)) {
    return ((void*)0);
  }
  int n;
  struct pair_hostid_result *a = get_pairs_hostid_result (&n, volume_id, T->root);
  if (a == ((void*)0)) {
    return ((void*)0);
  }

  filter_pairs_hostid_result (a, &n, result_or, result_and);

  if (!n) {
    free (a);
    return strdup ("");
  }

  int i, l = 0;

  for (i = 0; i < n; i++) {
    l += strlen (HOSTS[a[i].host_id]->hostname) + 1;
  }

  char *z = malloc (l), *p = z;
  if (z == ((void*)0)) {
    free (a);
    return ((void*)0);
  }

  for (i = 0; i < n; i++) {
    if (i > 0) {
      *p++= ',';
    }
    strcpy (p, HOSTS[a[i].host_id]->hostname);
    p += strlen (p);
  }
  vkprintf (4, "p = %p, z + l = %p\n", p, z + l);
  assert (p == (z + l - 1));
  free (a);
  return z;
}
