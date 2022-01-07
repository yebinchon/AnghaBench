
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int root; } ;
typedef TYPE_1__ transaction_t ;
struct pair_hostid_result {int result; size_t host_id; } ;
typedef int buf ;
struct TYPE_5__ {char* hostname; } ;


 TYPE_3__** HOSTS ;
 int alpha_to_status (char const* const) ;
 int assert (int) ;
 int filter_pairs_hostid_result (struct pair_hostid_result*,int*,unsigned int,int) ;
 int free (struct pair_hostid_result*) ;
 struct pair_hostid_result* get_pairs_hostid_result (int*,unsigned long long,int ) ;
 TYPE_1__* get_transaction_f (unsigned long long,int,int ) ;
 char* malloc (int) ;
 int snprintf (char*,int,char*,int) ;
 int sprintf (char*,char*,char*,int) ;
 char* strdup (char*) ;
 scalar_t__ strlen (char*) ;
 int vkprintf (int,char*,...) ;

char *get_hosts_list_by_status (unsigned long long volume_id, int transaction_id, const char *const status) {
  char buf[64];
  int s = alpha_to_status (status);
  if (s < 0) {
    vkprintf (3, "get_hosts_list_by_status: unknown status \"%s\"\n", status);
    return ((void*)0);
  }
  transaction_t *T = get_transaction_f (volume_id, transaction_id, 0);
  if (T == ((void*)0)) {
    vkprintf (3, "get_hosts_list_by_status: get_transaction_f (0x%llx, %d) returns NULL.\n", volume_id, transaction_id);
    return ((void*)0);
  }
  int n;
  struct pair_hostid_result *a = get_pairs_hostid_result (&n, volume_id, T->root);
  if (a == ((void*)0)) {
    vkprintf (3, "get_hosts_list_by_status: get_pairs_hostid_result returns NULL.\n");
    return ((void*)0);
  }

  filter_pairs_hostid_result (a, &n, ((unsigned) s) << 28, 0xf0000000U);

  if (n == 0) {
    free (a);
    return strdup ("");
  }

  int i, l = 0;

  for (i = 0; i < n; i++) {
    a[i].result &= 0x0fffffffU;
  }

  for (i = 0; i < n; i++) {
    int o = snprintf (buf, sizeof (buf), "0x%04x", a[i].result);
    assert (o < (int) sizeof (buf));
    l += o + strlen (HOSTS[a[i].host_id]->hostname) + 2;
  }
  char *z = malloc (l), *p = z;
  for (i = 0; i < n; i++) {
    if (i > 0) {
      *p++ = ',';
    }
    p += sprintf (p, "%s,0x%04x", HOSTS[a[i].host_id]->hostname, a[i].result);
  }
  assert (p == (z + (l - 1)));
  free (a);
  return z;
}
