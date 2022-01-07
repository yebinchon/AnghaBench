
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int WSPipeOut ;
struct TYPE_3__ {int listener; char* remote_ip; } ;
typedef TYPE_1__ WSClient ;


 int INET6_ADDRSTRLEN ;
 int WS_OPCODE_TEXT ;
 char* calloc (int,int) ;
 int free (char*) ;
 int pack_uint32 (char*,int) ;
 int ws_write_fifo (int *,char*,int) ;

__attribute__((used)) static int
onopen (WSPipeOut * pipeout, WSClient * client)
{
  uint32_t hsize = sizeof (uint32_t) * 3;
  char *hdr = calloc (hsize, sizeof (char));
  char *ptr = hdr;

  ptr += pack_uint32 (ptr, client->listener);
  ptr += pack_uint32 (ptr, WS_OPCODE_TEXT);
  ptr += pack_uint32 (ptr, INET6_ADDRSTRLEN);

  ws_write_fifo (pipeout, hdr, hsize);
  ws_write_fifo (pipeout, client->remote_ip, INET6_ADDRSTRLEN);
  free (hdr);

  return 0;
}
