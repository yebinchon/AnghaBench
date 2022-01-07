
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int y; scalar_t__ x; } ;
typedef TYPE_1__ hmap_pair_ll_int ;


 scalar_t__ H_ADD ;
 int h_id ;
 TYPE_1__* hmap_ll_int_get (int *,TYPE_1__) ;

inline int get_id_by_hash (const long long h) {
  hmap_pair_ll_int fi;
  fi.x = h + H_ADD;
  hmap_pair_ll_int *tmp = hmap_ll_int_get (&h_id, fi);

  if (tmp == ((void*)0)) {
    return 0;
  }
  return tmp->y;
}
