
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ n; } ;


 TYPE_1__ forbidden_owners_hashset ;
 int hashset_int_get (TYPE_1__*,int) ;
 TYPE_1__ mandatory_owners_hashset ;

inline int recommend_check_owner (int owner) {
  if (mandatory_owners_hashset.n && !hashset_int_get (&mandatory_owners_hashset, owner)) {
    return 0;
  }
  return !hashset_int_get (&forbidden_owners_hashset, owner);
}
