
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;
struct fetch_pack_args {scalar_t__ stateless_rpc; } ;


 int LARGE_PACKET_MAX ;
 int _ (char*) ;
 int die_errno (int ) ;
 int packet_flush (int) ;
 int send_sideband (int,int,int ,int ,int ) ;
 scalar_t__ write_in_full (int,int ,int ) ;

__attribute__((used)) static void send_request(struct fetch_pack_args *args,
    int fd, struct strbuf *buf)
{
 if (args->stateless_rpc) {
  send_sideband(fd, -1, buf->buf, buf->len, LARGE_PACKET_MAX);
  packet_flush(fd);
 } else {
  if (write_in_full(fd, buf->buf, buf->len) < 0)
   die_errno(_("unable to write to remote"));
 }
}
