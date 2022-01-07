
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_var {char* id; } ;


 char* mystrdup (char*,int) ;
 int namespace_level ;
 struct tl_var** tree_lookup_value_tl_var (int ,struct tl_var*) ;
 int * vars ;
 int zfree (char*,int) ;

struct tl_var *tl_get_var (char *_id, int len) {
  char *id = mystrdup (_id, len);
  struct tl_var v = {.id = id};
  int i;
  for (i = namespace_level; i >= 0; i--) {
    struct tl_var **w = tree_lookup_value_tl_var (vars[i], &v);
    if (w) {
      zfree (id, len + 1);
      return *w;
    }
  }
  return 0;
}
