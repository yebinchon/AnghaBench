
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_connection {int flags; } ;


 int EVHTTP_CON_PUBLIC_FLAGS_END ;
 int EVHTTP_CON_READ_ON_WRITE_ERROR ;
 int EVHTTP_CON_REUSE_CONNECTED_ADDR ;

int evhttp_connection_set_flags(struct evhttp_connection *evcon,
 int flags)
{
 int avail_flags = 0;
 avail_flags |= EVHTTP_CON_REUSE_CONNECTED_ADDR;
 avail_flags |= EVHTTP_CON_READ_ON_WRITE_ERROR;

 if (flags & ~avail_flags || flags > EVHTTP_CON_PUBLIC_FLAGS_END)
  return 1;
 evcon->flags &= ~avail_flags;

 evcon->flags |= flags;

 return 0;
}
