
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_pack_request {struct http_pack_request* url; int tmpfile; int * slot; int * packfile; } ;


 int fclose (int *) ;
 int free (struct http_pack_request*) ;
 int strbuf_release (int *) ;

void release_http_pack_request(struct http_pack_request *preq)
{
 if (preq->packfile != ((void*)0)) {
  fclose(preq->packfile);
  preq->packfile = ((void*)0);
 }
 preq->slot = ((void*)0);
 strbuf_release(&preq->tmpfile);
 free(preq->url);
 free(preq);
}
