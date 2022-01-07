
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int n; int new_v; int * x; } ;
typedef TYPE_1__ lookup ;


 int assert (int) ;
 int dl_free (int*,size_t) ;
 int* dl_malloc (size_t) ;
 int * map_int_int_get (int *,int ) ;
 int map_int_int_pairs (int *,int*,int*,int) ;
 int map_int_int_used (int *) ;

int lookup_get_ids (lookup *l, int *v, int mx) {
  int *st = v;
  int i;
  for (i = 0; i < l->n; i++) {
    if (map_int_int_get (&l->new_v, l->x[i]) == ((void*)0)) {
      if (mx > 0) {
        *v++ = l->x[i];
        mx--;
      }
    }
  }

  int nn = map_int_int_used (&l->new_v);
  if (nn == 0) {
    return v - st;
  }

  size_t ab_size = nn * sizeof (int);
  int *a = dl_malloc (ab_size);
  int *b = dl_malloc (ab_size);

  assert (map_int_int_pairs (&l->new_v, a, b, nn) == nn);
  for (i = 0; i < nn; i++) {
    if (b[i] != -1) {
      if (mx > 0) {
        *v++ = a[i];
        mx--;
      }
    }
  }

  dl_free (a, ab_size);
  dl_free (b, ab_size);

  return v - st;
}
