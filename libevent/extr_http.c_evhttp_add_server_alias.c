
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_server_alias {int alias; } ;
struct evhttp {int aliases; } ;


 int TAILQ_INSERT_TAIL (int *,struct evhttp_server_alias*,int ) ;
 struct evhttp_server_alias* mm_calloc (int,int) ;
 int mm_free (struct evhttp_server_alias*) ;
 int mm_strdup (char const*) ;
 int next ;

int
evhttp_add_server_alias(struct evhttp *http, const char *alias)
{
 struct evhttp_server_alias *evalias;

 evalias = mm_calloc(1, sizeof(*evalias));
 if (!evalias)
  return -1;

 evalias->alias = mm_strdup(alias);
 if (!evalias->alias) {
  mm_free(evalias);
  return -1;
 }

 TAILQ_INSERT_TAIL(&http->aliases, evalias, next);

 return 0;
}
