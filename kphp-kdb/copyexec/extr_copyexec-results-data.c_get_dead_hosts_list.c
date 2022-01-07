
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int a ;
struct TYPE_2__ {unsigned long long volume_id; int last_action_time; char* hostname; int disabled; } ;


 TYPE_1__** HOSTS ;
 int assert (int) ;
 int* calloc (int,int) ;
 int free (int*) ;
 int hosts ;
 char* malloc (int) ;
 int now ;
 int strcpy (char*,char*) ;
 char* strdup (char*) ;
 scalar_t__ strlen (char*) ;
 int vkprintf (int,char*,unsigned long long,int) ;

char *get_dead_hosts_list (unsigned long long volume_id, int delay) {
  vkprintf (3, "get_dead_hosts_list (volume_id:%llu, delay: %d)\n", volume_id, delay);
  int *a = calloc (hosts, sizeof (a[0]));
  if (a == ((void*)0)) {
    return ((void*)0);
  }
  int i, n = 0, l = 0, t = now - delay;
  for (i = 1; i <= hosts; i++) {
    if (HOSTS[i]->volume_id == volume_id && !HOSTS[i]->disabled && HOSTS[i]->last_action_time < t) {
      a[n++] = i;
      l += strlen (HOSTS[i]->hostname) + 1;
    }
  }
  if (!n) {
    return strdup ("");
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
    strcpy (p, HOSTS[a[i]]->hostname);
    p += strlen (p);
  }
  assert (p == (z + l - 1));
  free (a);
  return z;
}
