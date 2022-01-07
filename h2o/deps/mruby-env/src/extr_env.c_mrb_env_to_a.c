
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 char** environ ;
 int mrb_ary_new (int *) ;
 int mrb_ary_push (int *,int ,int ) ;
 int mrb_gc_arena_restore (int *,int) ;
 int mrb_gc_arena_save (int *) ;
 int mrb_str_new (int *,char*,int) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;

__attribute__((used)) static mrb_value
mrb_env_to_a(mrb_state *mrb, mrb_value self)
{
  int i;
  mrb_value ary;

  ary = mrb_ary_new(mrb);
  for (i = 0; environ[i] != ((void*)0); i++) {
    char *str = strchr(environ[i], '=');
    if (str != ((void*)0)) {
      int ai = mrb_gc_arena_save(mrb);
      mrb_value elem = mrb_ary_new(mrb);
      int len = str - environ[i];
      mrb_ary_push(mrb, elem, mrb_str_new(mrb, environ[i], len));
      str++;
      mrb_ary_push(mrb, elem, mrb_str_new(mrb, str, strlen(str)));
      mrb_ary_push(mrb, ary, elem);
      mrb_gc_arena_restore(mrb, ai);
    }
  }

  return ary;
}
