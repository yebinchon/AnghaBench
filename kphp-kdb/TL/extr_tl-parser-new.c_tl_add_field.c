
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int * fields ;
 int lrand48 () ;
 int namespace_level ;
 int tree_insert_tl_field (int ,char*,int ) ;
 scalar_t__ tree_lookup_tl_field (int ,char*) ;

int tl_add_field (char *id) {
  assert (namespace_level < 10);
  assert (namespace_level >= 0);
  if (tree_lookup_tl_field (fields[namespace_level], id)) {
    return 0;
  }
  fields[namespace_level] = tree_insert_tl_field (fields[namespace_level], id, lrand48 ());
  return 1;
}
