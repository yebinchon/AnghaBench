
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer_cb_entry {int dummy; } ;
struct evbuffer {int dummy; } ;


 int EVBUFFER_LOCK (struct evbuffer*) ;
 int EVBUFFER_UNLOCK (struct evbuffer*) ;
 int LIST_REMOVE (struct evbuffer_cb_entry*,int ) ;
 int mm_free (struct evbuffer_cb_entry*) ;
 int next ;

int
evbuffer_remove_cb_entry(struct evbuffer *buffer,
    struct evbuffer_cb_entry *ent)
{
 EVBUFFER_LOCK(buffer);
 LIST_REMOVE(ent, next);
 EVBUFFER_UNLOCK(buffer);
 mm_free(ent);
 return 0;
}
