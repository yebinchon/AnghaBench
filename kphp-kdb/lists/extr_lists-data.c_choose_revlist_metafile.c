
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int object_id_t ;


 long revlist_lookup_left (int ,int ,int ) ;
 int revlist_metafiles_bounds ;
 int tot_revlist_metafiles ;

__attribute__((used)) static long choose_revlist_metafile (object_id_t x) {
  return revlist_lookup_left (x, revlist_metafiles_bounds, tot_revlist_metafiles);
}
