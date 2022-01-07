
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_state {int alloc; int len; char* buf; scalar_t__ write_line_lengths; int out; } ;
typedef enum packet_read_status { ____Placeholder_packet_read_status } packet_read_status ;


 size_t LARGE_PACKET_MAX ;



 int PACKET_READ_GENTLE_ON_EOF ;

 int _ (char*) ;
 int die (int ) ;
 int memcpy (char*,char*,int) ;
 int packet_read_with_status (int ,int *,int *,char*,size_t,int*,int) ;
 int set_packet_header (char*,size_t) ;

__attribute__((used)) static int rpc_read_from_out(struct rpc_state *rpc, int options,
        size_t *appended,
        enum packet_read_status *status) {
 size_t left;
 char *buf;
 int pktlen_raw;

 if (rpc->write_line_lengths) {
  left = rpc->alloc - rpc->len - 4;
  buf = rpc->buf + rpc->len + 4;
 } else {
  left = rpc->alloc - rpc->len;
  buf = rpc->buf + rpc->len;
 }

 if (left < LARGE_PACKET_MAX)
  return 0;

 *status = packet_read_with_status(rpc->out, ((void*)0), ((void*)0), buf,
   left, &pktlen_raw, options);
 if (*status != 130) {
  *appended = pktlen_raw + (rpc->write_line_lengths ? 4 : 0);
  rpc->len += *appended;
 }

 if (rpc->write_line_lengths) {
  switch (*status) {
  case 130:
   if (!(options & PACKET_READ_GENTLE_ON_EOF))
    die(_("shouldn't have EOF when not gentle on EOF"));
   break;
  case 128:
   set_packet_header(buf - 4, *appended);
   break;
  case 131:
   memcpy(buf - 4, "0001", 4);
   break;
  case 129:
   memcpy(buf - 4, "0000", 4);
   break;
  }
 }

 return 1;
}
