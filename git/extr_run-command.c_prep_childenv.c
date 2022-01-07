
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct string_list {int nr; TYPE_1__* items; } ;
struct strbuf {char const* const buf; } ;
struct TYPE_6__ {void* util; } ;
struct TYPE_5__ {void* util; } ;
struct TYPE_4__ {char* util; } ;


 int ALLOC_ARRAY (char**,int) ;
 struct strbuf STRBUF_INIT ;
 struct string_list STRING_LIST_INIT_DUP ;
 int strbuf_add (struct strbuf*,char const* const,int) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 char* strchr (char const* const,char) ;
 TYPE_3__* string_list_append (struct string_list*,char const* const) ;
 int string_list_clear (struct string_list*,int ) ;
 TYPE_2__* string_list_insert (struct string_list*,char const* const) ;
 int string_list_remove (struct string_list*,char const* const,int ) ;
 int string_list_sort (struct string_list*) ;

__attribute__((used)) static char **prep_childenv(const char *const *deltaenv)
{
 extern char **environ;
 char **childenv;
 struct string_list env = STRING_LIST_INIT_DUP;
 struct strbuf key = STRBUF_INIT;
 const char *const *p;
 int i;


 for (p = (const char *const *) environ; p && *p; p++) {
  const char *equals = strchr(*p, '=');

  if (equals) {
   strbuf_reset(&key);
   strbuf_add(&key, *p, equals - *p);
   string_list_append(&env, key.buf)->util = (void *) *p;
  } else {
   string_list_append(&env, *p)->util = (void *) *p;
  }
 }
 string_list_sort(&env);


 for (p = deltaenv; p && *p; p++) {
  const char *equals = strchr(*p, '=');

  if (equals) {

   strbuf_reset(&key);
   strbuf_add(&key, *p, equals - *p);
   string_list_insert(&env, key.buf)->util = (void *) *p;
  } else {

   string_list_remove(&env, *p, 0);
  }
 }


 ALLOC_ARRAY(childenv, env.nr + 1);
 for (i = 0; i < env.nr; i++)
  childenv[i] = env.items[i].util;
 childenv[env.nr] = ((void*)0);

 string_list_clear(&env, 0);
 strbuf_release(&key);
 return childenv;
}
