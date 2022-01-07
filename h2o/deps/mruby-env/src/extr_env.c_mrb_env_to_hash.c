
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 char** environ ;
 int mrb_gc_arena_restore (int *,int) ;
 int mrb_gc_arena_save (int *) ;
 int mrb_hash_new (int *) ;
 int mrb_hash_set (int *,int ,int ,int ) ;
 int mrb_str_new (int *,char*,int) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;

__attribute__((used)) static mrb_value
mrb_env_to_hash(mrb_state *mrb, mrb_value self)
{
  int i;
  mrb_value hash;

  hash = mrb_hash_new(mrb);
  for (i = 0; environ[i] != ((void*)0); i++) {
    char *str = strchr(environ[i], '=');
    if (str != ((void*)0)) {
      mrb_value val;
      int ai = mrb_gc_arena_save(mrb);
      int len = str - environ[i];
      mrb_value key = mrb_str_new(mrb, environ[i], len);
      str++;
      val = mrb_str_new(mrb, str, strlen(str));
      mrb_hash_set(mrb, hash, key, val);
      mrb_gc_arena_restore(mrb, ai);
    }
  }

  return hash;
}
