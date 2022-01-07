
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evkeyvalq {int dummy; } ;
struct evkeyval {struct evkeyval* value; struct evkeyval* key; } ;


 struct evkeyval* TAILQ_FIRST (struct evkeyvalq*) ;
 int TAILQ_REMOVE (struct evkeyvalq*,struct evkeyval*,int ) ;
 int mm_free (struct evkeyval*) ;
 int next ;

void
evhttp_clear_headers(struct evkeyvalq *headers)
{
 struct evkeyval *header;

 for (header = TAILQ_FIRST(headers);
     header != ((void*)0);
     header = TAILQ_FIRST(headers)) {
  TAILQ_REMOVE(headers, header, next);
  mm_free(header->key);
  mm_free(header->value);
  mm_free(header);
 }
}
