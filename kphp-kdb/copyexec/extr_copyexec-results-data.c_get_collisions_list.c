
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int last_data_time; int first_data_time; int random_tag; int hostname; int volume_id; int disabled; } ;
typedef TYPE_1__ host_t ;
typedef int buf ;
typedef int a ;


 TYPE_1__** HOSTS ;
 int assert (int) ;
 TYPE_1__** calloc (int,int) ;
 int cmp_phost_t ;
 int free (TYPE_1__**) ;
 int hosts ;
 char* malloc (int) ;
 int qsort (TYPE_1__**,int,int,int ) ;
 scalar_t__ snprintf (char*,int,char*,int ,int ,int ,int ,int ) ;
 int sprintf (char*,char*,int ,int ,int ,int ,int ) ;
 char* strdup (char*) ;
 int vkprintf (int,char*,int) ;
 int weak_cmp_phost_t (TYPE_1__*,TYPE_1__*) ;

char *get_collisions_list (void) {
  vkprintf (3, "get_collistions_list: hosts = %d\n", hosts);
  int i, j, k;
  char buf[1024];
  if (!hosts) {
    return ((void*)0);
  }
  host_t **a = calloc (hosts, sizeof (a[0]));
  if (a == ((void*)0)) {
    return ((void*)0);
  }
  int n = 0;
  for (i = 0; i < hosts; i++) {
    if (!HOSTS[i+1]->disabled) {
      a[n++] = HOSTS[i+1];
    }
  }
  if (!n) {
    return ((void*)0);
  }
  qsort (a, n, sizeof (a[0]), cmp_phost_t);
  int l = 0;
  for (i = 0; i < n; i = j) {
    for (j = i + 1; j < n && !weak_cmp_phost_t (a[i], a[j]); j++) { }
    int m = j - i;
    if (m > 1) {
      for (k = i; k < j; k++) {
        l += snprintf (buf, sizeof (buf), "%llu,%s,0x%llx,%d,%d\n", a[k]->volume_id, a[k]->hostname, a[k]->random_tag, a[k]->first_data_time, a[k]->last_data_time);
      }
    }
  }
  if (l == 0) {
    return strdup ("");
  }
  l++;
  char *z = malloc (l), *p = z;
  if (z == ((void*)0)) {
    free (a);
    return ((void*)0);
  }
  for (i = 0; i < n; i = j) {
    for (j = i + 1; j < n && !weak_cmp_phost_t (a[i], a[j]); j++) { }
    int m = j - i;
    if (m > 1) {
      for (k = i; k < j; k++) {
        p += sprintf (p, "%llu,%s,0x%llx,%d,%d\n", a[k]->volume_id, a[k]->hostname, a[k]->random_tag, a[k]->first_data_time, a[k]->last_data_time);
      }
    }
  }
  free (a);
  assert (p == (z + l - 1));
  return z;
}
