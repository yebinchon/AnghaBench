
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_type {char* id; } ;


 char* mystrdup (char const*,int) ;
 int tl_type_tree ;
 struct tl_type** tree_lookup_value_tl_type (int ,struct tl_type*) ;
 int zfree (char*,int) ;

struct tl_type *tl_get_type (const char *_id, int len) {
  char *id = mystrdup (_id, len);
  struct tl_type _t = {.id = id};
  struct tl_type **r = tree_lookup_value_tl_type (tl_type_tree, &_t);
  zfree (id, len + 1);
  return r ? *r : 0;
}
