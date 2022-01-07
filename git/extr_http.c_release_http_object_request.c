
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct http_object_request {int localfile; int tmpfile; TYPE_1__* slot; int url; } ;
struct TYPE_2__ {int * callback_data; int * callback_func; } ;


 int FREE_AND_NULL (int ) ;
 int close (int) ;
 int release_active_slot (TYPE_1__*) ;
 int strbuf_release (int *) ;

void release_http_object_request(struct http_object_request *freq)
{
 if (freq->localfile != -1) {
  close(freq->localfile);
  freq->localfile = -1;
 }
 FREE_AND_NULL(freq->url);
 if (freq->slot != ((void*)0)) {
  freq->slot->callback_func = ((void*)0);
  freq->slot->callback_data = ((void*)0);
  release_active_slot(freq->slot);
  freq->slot = ((void*)0);
 }
 strbuf_release(&freq->tmpfile);
}
