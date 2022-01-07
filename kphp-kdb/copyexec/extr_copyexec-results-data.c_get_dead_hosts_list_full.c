
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int buf ;
typedef int a ;
struct TYPE_2__ {unsigned long long volume_id; int last_action_time; int last_data_time; int first_data_time; int random_tag; int hostname; int disabled; } ;


 TYPE_1__** HOSTS ;
 int assert (int) ;
 int* calloc (int,int) ;
 int free (int*) ;
 int hosts ;
 char* malloc (int) ;
 int now ;
 scalar_t__ snprintf (char*,int,char*,unsigned long long,int ,int ,int ,int ) ;
 int sprintf (char*,char*,unsigned long long,int ,int ,int ,int ) ;
 char* strdup (char*) ;
 int vkprintf (int,char*,unsigned long long,int) ;

char *get_dead_hosts_list_full (unsigned long long volume_id, int delay) {
  vkprintf (3, "get_dead_hosts_list_full (volume_id:%llu, delay: %d)\n", volume_id, delay);
  char buf[1024];
  int *a = calloc (hosts, sizeof (a[0]));
  if (a == ((void*)0)) {
    return ((void*)0);
  }
  int i, n = 0, l = 0, t = now - delay;
  for (i = 1; i <= hosts; i++) {
    if (HOSTS[i]->volume_id == volume_id && !HOSTS[i]->disabled && HOSTS[i]->last_action_time < t) {
      a[n++] = i;
      l += snprintf (buf, sizeof (buf), "%llu,%s,0x%llx,%d,%d\n", HOSTS[i]->volume_id, HOSTS[i]->hostname, HOSTS[i]->random_tag, HOSTS[i]->first_data_time, HOSTS[i]->last_data_time);
    }
  }
  if (!n) {
    return strdup ("");
  }
  l++;
  char *z = malloc (l), *p = z;
  if (z == ((void*)0)) {
    free (a);
    return ((void*)0);
  }

  for (i = 0; i < n; i++) {
    p += sprintf (p, "%llu,%s,0x%llx,%d,%d\n", HOSTS[a[i]]->volume_id, HOSTS[a[i]]->hostname, HOSTS[a[i]]->random_tag, HOSTS[a[i]]->first_data_time, HOSTS[a[i]]->last_data_time);
  }
  assert (p == (z + l - 1));
  free (a);
  return z;
}
