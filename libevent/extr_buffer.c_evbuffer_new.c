
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int refcnt; int max_read; int first; int * last_with_datap; int callbacks; } ;


 int EVBUFFER_MAX_READ_DEFAULT ;
 int LIST_INIT (int *) ;
 struct evbuffer* mm_calloc (int,int) ;

struct evbuffer *
evbuffer_new(void)
{
 struct evbuffer *buffer;

 buffer = mm_calloc(1, sizeof(struct evbuffer));
 if (buffer == ((void*)0))
  return (((void*)0));

 LIST_INIT(&buffer->callbacks);
 buffer->refcnt = 1;
 buffer->last_with_datap = &buffer->first;
 buffer->max_read = EVBUFFER_MAX_READ_DEFAULT;

 return (buffer);
}
