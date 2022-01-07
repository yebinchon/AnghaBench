
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_constructor {char* id; } ;


 char* mystrdup (char const*,int) ;
 int tl_constructor_tree ;
 struct tl_constructor** tree_lookup_value_tl_constructor (int ,struct tl_constructor*) ;
 int zfree (char*,int) ;

struct tl_constructor *tl_get_constructor (const char *_id, int len) {
  char *id = mystrdup (_id, len);
  struct tl_constructor _t = {.id = id};
  struct tl_constructor **r = tree_lookup_value_tl_constructor (tl_constructor_tree, &_t);
  zfree (id, len);
  return r ? *r : 0;
}
