
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_buffer {void* eptr; void* wptr; void* sptr; void* rptr; int magic; } ;


 int RPC_BUFFER_MAGIC ;
 struct rpc_buffer* zzmalloc (int) ;

__attribute__((used)) static inline struct rpc_buffer *buffer_create_data (void *data, int len) {
  struct rpc_buffer *buf = zzmalloc (sizeof (struct rpc_buffer));
  buf->magic = RPC_BUFFER_MAGIC;
  buf->rptr = buf->sptr = data;
  buf->wptr = buf->eptr = data + len;
  return buf;
}
