
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer_cb_entry {int dummy; } ;
struct evbuffer {int callbacks; } ;


 struct evbuffer_cb_entry* LIST_FIRST (int *) ;
 int LIST_REMOVE (struct evbuffer_cb_entry*,int ) ;
 int mm_free (struct evbuffer_cb_entry*) ;
 int next ;

__attribute__((used)) static void
evbuffer_remove_all_callbacks(struct evbuffer *buffer)
{
 struct evbuffer_cb_entry *cbent;

 while ((cbent = LIST_FIRST(&buffer->callbacks))) {
  LIST_REMOVE(cbent, next);
  mm_free(cbent);
 }
}
