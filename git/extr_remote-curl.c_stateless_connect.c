
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct rpc_state {char const* service_name; int in; int gzip_request; int write_line_lengths; int * buf; int * protocol_header; int * hdr_accept; int * hdr_content_type; int * service_url; scalar_t__ len; scalar_t__ flush_read_but_not_sent; scalar_t__ initial_buffer; scalar_t__ any_written; scalar_t__ out; scalar_t__ pos; int alloc; } ;
struct discovery {scalar_t__ version; int len; int buf; } ;
typedef enum packet_read_status { ____Placeholder_packet_read_status } packet_read_status ;
struct TYPE_2__ {int buf; } ;


 int BUG (char*) ;
 int PACKET_READ_EOF ;
 int PACKET_READ_FLUSH ;
 int PACKET_READ_GENTLE_ON_EOF ;
 struct strbuf STRBUF_INIT ;
 struct discovery* discover_refs (char const*,int ) ;
 int fflush (int ) ;
 int free (int *) ;
 scalar_t__ get_protocol_http_header (scalar_t__,struct strbuf*) ;
 int http_post_buffer ;
 scalar_t__ post_rpc (struct rpc_state*,int) ;
 int printf (char*) ;
 scalar_t__ protocol_v2 ;
 int rpc_read_from_out (struct rpc_state*,int ,size_t*,int*) ;
 int stdout ;
 int * strbuf_detach (struct strbuf*,int *) ;
 int strbuf_release (struct strbuf*) ;
 TYPE_1__ url ;
 int write_or_die (int,int ,int ) ;
 int * xmalloc (int ) ;
 void* xstrfmt (char*,char const*,...) ;

__attribute__((used)) static int stateless_connect(const char *service_name)
{
 struct discovery *discover;
 struct rpc_state rpc;
 struct strbuf buf = STRBUF_INIT;
 discover = discover_refs(service_name, 0);
 if (discover->version != protocol_v2) {
  printf("fallback\n");
  fflush(stdout);
  return -1;
 } else {

  printf("\n");
  fflush(stdout);
 }

 rpc.service_name = service_name;
 rpc.service_url = xstrfmt("%s%s", url.buf, rpc.service_name);
 rpc.hdr_content_type = xstrfmt("Content-Type: application/x-%s-request", rpc.service_name);
 rpc.hdr_accept = xstrfmt("Accept: application/x-%s-result", rpc.service_name);
 if (get_protocol_http_header(discover->version, &buf)) {
  rpc.protocol_header = strbuf_detach(&buf, ((void*)0));
 } else {
  rpc.protocol_header = ((void*)0);
  strbuf_release(&buf);
 }
 rpc.buf = xmalloc(http_post_buffer);
 rpc.alloc = http_post_buffer;
 rpc.len = 0;
 rpc.pos = 0;
 rpc.in = 1;
 rpc.out = 0;
 rpc.any_written = 0;
 rpc.gzip_request = 1;
 rpc.initial_buffer = 0;
 rpc.write_line_lengths = 1;
 rpc.flush_read_but_not_sent = 0;





 write_or_die(rpc.in, discover->buf, discover->len);


 while (1) {
  size_t avail;
  enum packet_read_status status;

  if (!rpc_read_from_out(&rpc, PACKET_READ_GENTLE_ON_EOF, &avail,
           &status))
   BUG("The entire rpc->buf should be larger than LARGE_PACKET_MAX");
  if (status == PACKET_READ_EOF)
   break;
  if (post_rpc(&rpc, status == PACKET_READ_FLUSH))

   break;

  rpc.len = 0;
 }

 free(rpc.service_url);
 free(rpc.hdr_content_type);
 free(rpc.hdr_accept);
 free(rpc.protocol_header);
 free(rpc.buf);
 strbuf_release(&buf);

 return 0;
}
