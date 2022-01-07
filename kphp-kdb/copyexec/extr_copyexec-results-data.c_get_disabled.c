
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long long volume_id; char* hostname; int last_data_time; int first_data_time; int random_tag; scalar_t__ disabled; } ;
typedef TYPE_1__ host_t ;
typedef int buf ;


 TYPE_1__** HOSTS ;
 int assert (int) ;
 int hosts ;
 char* malloc (int) ;
 scalar_t__ snprintf (char*,int,char*,char*,int ,int ,int ) ;
 int sprintf (char*,char*,char*,int ,int ,int ) ;
 char* strdup (char*) ;
 int vkprintf (int,char*,int,...) ;

char *get_disabled (unsigned long long volume_id) {
  vkprintf (3, "get_disabled (volume_id: %llu)\n", volume_id);
  char buf[32];
  if (hosts <= 0) {
    return strdup ("");
  }
  int i, l = 0, m = 0;
  host_t *h;
  for (i = 1; i <= hosts; i++) {
    h = HOSTS[i];
    if (h->disabled && h->volume_id == volume_id) {
      l += snprintf (buf, sizeof (buf), "%s,0x%llx,%d,%d\n", h->hostname, h->random_tag, h->first_data_time, h->last_data_time);
      m++;
    }
  }
  if (!m) {
    return strdup ("");
  }
  vkprintf (4, "get_disabled: l = %d, m = %d\n", l, m);

  char *z = malloc (l + 1), *p = z;
  if (z == ((void*)0)) {
    return ((void*)0);
  }

  for (i = 1; i <= hosts; i++) {
    h = HOSTS[i];
    if (h->disabled && h->volume_id == volume_id) {
      p += sprintf (p, "%s,0x%llx,%d,%d\n", h->hostname, h->random_tag, h->first_data_time, h->last_data_time);
    }
  }

  assert (p == (z + l));
  return z;
}
