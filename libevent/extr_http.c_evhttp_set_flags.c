
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp {int flags; } ;


 int EVHTTP_SERVER_LINGERING_CLOSE ;

int evhttp_set_flags(struct evhttp *http, int flags)
{
 int avail_flags = 0;
 avail_flags |= EVHTTP_SERVER_LINGERING_CLOSE;

 if (flags & ~avail_flags)
  return 1;
 http->flags &= ~avail_flags;

 http->flags |= flags;

 return 0;
}
