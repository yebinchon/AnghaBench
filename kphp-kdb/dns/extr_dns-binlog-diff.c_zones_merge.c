
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int origin_len; int origin; struct TYPE_11__* next; } ;
typedef TYPE_1__ zone_t ;
typedef int B ;
typedef int A ;


 TYPE_1__** alloca (int) ;
 int assert (int) ;
 int cmp_str (int ,int ,int ,int ) ;
 int * last_deleted_record ;
 int zone_add (TYPE_1__*) ;
 int zone_delete (TYPE_1__*) ;
 int zone_diff (TYPE_1__*,TYPE_1__*) ;
 int zones_count (TYPE_1__*) ;
 int zones_sort (TYPE_1__**,int) ;

__attribute__((used)) static void zones_merge (zone_t *new_zones, zone_t *old_zones) {
  last_deleted_record = ((void*)0);
  int na = zones_count (new_zones);
  int nb = zones_count (old_zones);
  int i = 0, j = 0;
  zone_t *z;
  zone_t **A = alloca (sizeof (A[0]) * na);
  for (z = new_zones; z != ((void*)0); z = z->next) {
    A[i++] = z;
  }
  zone_t **B = alloca (sizeof (B[0]) * nb);
  for (z = old_zones; z != ((void*)0); z = z->next) {
    B[j++] = z;
  }
  assert (i == na && j == nb);
  zones_sort (A, na);
  zones_sort (B, nb);
  i = j = 0;
  while (i < na && j < nb) {
    int c = cmp_str (A[i]->origin, A[i]->origin_len, B[j]->origin, B[j]->origin_len);
    if (c < 0) {
      zone_add (A[i++]);
    } else if (!c) {
      zone_diff (A[i], B[j]);
      i++;
      j++;
    } else {
      zone_delete (B[j++]);
    }
  }
  while (i < na) {
    zone_add (A[i++]);
  }
  while (j < nb) {
    zone_delete (B[j++]);
  }
}
