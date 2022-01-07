
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct string_list {int nr; TYPE_1__* items; } ;
struct strbuf {char const* const buf; } ;
struct TYPE_4__ {char* util; } ;
struct TYPE_3__ {char* string; char* util; } ;


 struct strbuf STRBUF_INIT ;
 struct string_list STRING_LIST_INIT_DUP ;
 char* getenv (char const*) ;
 int sq_quote_buf_pretty (struct strbuf*,char const*) ;
 int strbuf_add (struct strbuf*,char const* const,int) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addf (struct strbuf*,char*,char const*) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_release (struct strbuf*) ;
 char* strchr (char const* const,char) ;
 int strcmp (char const*,char const*) ;
 int string_list_clear (struct string_list*,int ) ;
 TYPE_2__* string_list_insert (struct string_list*,char const* const) ;

__attribute__((used)) static void trace_add_env(struct strbuf *dst, const char *const *deltaenv)
{
 struct string_list envs = STRING_LIST_INIT_DUP;
 const char *const *e;
 int i;
 int printed_unset = 0;


 for (e = deltaenv; e && *e; e++) {
  struct strbuf key = STRBUF_INIT;
  char *equals = strchr(*e, '=');

  if (equals) {
   strbuf_add(&key, *e, equals - *e);
   string_list_insert(&envs, key.buf)->util = equals + 1;
  } else {
   string_list_insert(&envs, *e)->util = ((void*)0);
  }
  strbuf_release(&key);
 }


 for (i = 0; i < envs.nr; i++) {
  const char *var = envs.items[i].string;
  const char *val = envs.items[i].util;

  if (val || !getenv(var))
   continue;

  if (!printed_unset) {
   strbuf_addstr(dst, " unset");
   printed_unset = 1;
  }
  strbuf_addf(dst, " %s", var);
 }
 if (printed_unset)
  strbuf_addch(dst, ';');


 for (i = 0; i < envs.nr; i++) {
  const char *var = envs.items[i].string;
  const char *val = envs.items[i].util;
  const char *oldval;

  if (!val)
   continue;

  oldval = getenv(var);
  if (oldval && !strcmp(val, oldval))
   continue;

  strbuf_addf(dst, " %s=", var);
  sq_quote_buf_pretty(dst, val);
 }
 string_list_clear(&envs, 0);
}
