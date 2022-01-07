
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int extent_t ;


 int assert (int) ;
 scalar_t__ extent_base_get (int *) ;
 scalar_t__ extent_is_head_get (int *) ;
 scalar_t__ extent_sn_comp (int *,int *) ;
 scalar_t__ maps_coalesce ;
 int opt_retain ;

__attribute__((used)) static bool
extent_head_no_merge(extent_t *a, extent_t *b) {
 assert(extent_base_get(a) < extent_base_get(b));





 if (maps_coalesce) {
  return 0;
 }
 if (!opt_retain) {
  return 1;
 }

 if (extent_is_head_get(b)) {




  assert(extent_sn_comp(a, b) != 0);
  return 1;
 }
 assert(extent_sn_comp(a, b) == 0);

 return 0;
}
