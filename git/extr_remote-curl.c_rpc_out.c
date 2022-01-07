
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_state {size_t len; size_t pos; int flush_read_but_not_sent; size_t buf; scalar_t__ initial_buffer; } ;
typedef enum packet_read_status { ____Placeholder_packet_read_status } packet_read_status ;


 int BUG (char*) ;
 int PACKET_READ_FLUSH ;
 int memcpy (void*,size_t,size_t) ;
 int rpc_read_from_out (struct rpc_state*,int ,size_t*,int*) ;

__attribute__((used)) static size_t rpc_out(void *ptr, size_t eltsize,
  size_t nmemb, void *buffer_)
{
 size_t max = eltsize * nmemb;
 struct rpc_state *rpc = buffer_;
 size_t avail = rpc->len - rpc->pos;
 enum packet_read_status status;

 if (!avail) {
  rpc->initial_buffer = 0;
  rpc->len = 0;
  rpc->pos = 0;
  if (!rpc->flush_read_but_not_sent) {
   if (!rpc_read_from_out(rpc, 0, &avail, &status))
    BUG("The entire rpc->buf should be larger than LARGE_PACKET_MAX");
   if (status == PACKET_READ_FLUSH)
    rpc->flush_read_but_not_sent = 1;
  }





 }
 if (rpc->flush_read_but_not_sent) {
  if (!avail) {






   rpc->flush_read_but_not_sent = 0;
   return 0;
  }





 }

 if (max < avail)
  avail = max;
 memcpy(ptr, rpc->buf + rpc->pos, avail);
 rpc->pos += avail;
 return avail;
}
