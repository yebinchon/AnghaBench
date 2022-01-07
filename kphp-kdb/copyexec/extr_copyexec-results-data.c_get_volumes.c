
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int v ;
typedef int buf ;
struct TYPE_2__ {unsigned long long volume_id; } ;


 TYPE_1__** HOSTS ;
 int assert (int) ;
 unsigned long long* calloc (int,int) ;
 int cmp_unsigned_long_long ;
 int free (unsigned long long*) ;
 int hosts ;
 char* malloc (int) ;
 int qsort (unsigned long long*,int,int,int ) ;
 int snprintf (char*,int,char*,unsigned long long) ;
 int sprintf (char*,char*,unsigned long long) ;
 char* strdup (char*) ;

char *get_volumes (void) {
  char buf[32];
  if (hosts <= 0) {
    return strdup ("");
  }
  int i, m = 0, l = 0;
  unsigned long long *v = calloc (hosts, sizeof (v[0]));
  for (i = 0; i < hosts; i++) {
    v[i] = HOSTS[i+1]->volume_id;
  }
  qsort (v, hosts, sizeof (v[0]), cmp_unsigned_long_long);
  for (i = 1; i < hosts; i++) {
    if (v[i] != v[m]) {
      v[++m] = v[i];
    }
  }
  m++;
  for (i = 0; i < m; i++) {
    int o = snprintf (buf, sizeof (buf), "%llu", v[i]);
    assert (o < sizeof (buf));
    l += o + 1;
  }
  char *z = malloc (l), *p = z;
  for (i = 0; i < m; i++) {
    if (i > 0) {
      *p++ = ',';
    }
    p += sprintf (p, "%llu", v[i]);
  }
  free (v);
  assert (p == (z + (l - 1)));
  return z;
}
