
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;


 int evbuffer_drain (struct evbuffer*,int) ;
 int evtag_unmarshal_header (struct evbuffer*,int *) ;

int
evtag_consume(struct evbuffer *evbuf)
{
 int len;
 if ((len = evtag_unmarshal_header(evbuf, ((void*)0))) == -1)
  return (-1);
 evbuffer_drain(evbuf, len);

 return (0);
}
