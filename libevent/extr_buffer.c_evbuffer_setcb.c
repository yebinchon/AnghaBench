
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cb_obsolete; } ;
struct evbuffer_cb_entry {int flags; TYPE_1__ cb; } ;
struct evbuffer {int callbacks; } ;
typedef scalar_t__ evbuffer_cb ;


 int EVBUFFER_CB_OBSOLETE ;
 int EVBUFFER_LOCK (struct evbuffer*) ;
 int EVBUFFER_UNLOCK (struct evbuffer*) ;
 int LIST_EMPTY (int *) ;
 struct evbuffer_cb_entry* evbuffer_add_cb (struct evbuffer*,int *,void*) ;
 int evbuffer_remove_all_callbacks (struct evbuffer*) ;

int
evbuffer_setcb(struct evbuffer *buffer, evbuffer_cb cb, void *cbarg)
{
 EVBUFFER_LOCK(buffer);

 if (!LIST_EMPTY(&buffer->callbacks))
  evbuffer_remove_all_callbacks(buffer);

 if (cb) {
  struct evbuffer_cb_entry *ent =
      evbuffer_add_cb(buffer, ((void*)0), cbarg);
  if (!ent) {
   EVBUFFER_UNLOCK(buffer);
   return -1;
  }
  ent->cb.cb_obsolete = cb;
  ent->flags |= EVBUFFER_CB_OBSOLETE;
 }
 EVBUFFER_UNLOCK(buffer);
 return 0;
}
