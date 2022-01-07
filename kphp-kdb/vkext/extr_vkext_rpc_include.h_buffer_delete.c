
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_buffer {scalar_t__ sptr; scalar_t__ eptr; scalar_t__ magic; } ;


 int zzefree (scalar_t__,scalar_t__) ;
 int zzfree (struct rpc_buffer*,int) ;

__attribute__((used)) static struct rpc_buffer *buffer_delete (struct rpc_buffer *buf) {
  buf->magic = 0;
  zzefree (buf->sptr, buf->eptr - buf->sptr);
  zzfree (buf, sizeof (*buf));
  return 0;
}
