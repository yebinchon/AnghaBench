
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int len; int buf; } ;
struct rpc_state {char* service_name; int in; int out; int len; int * buf; int * protocol_header; int * hdr_accept; int * hdr_content_type; int * service_url; scalar_t__ pos; int alloc; } ;
struct discovery {int version; int len; int buf; } ;
struct child_process {int in; int out; int git_cmd; char const** argv; } ;
typedef int buf ;
struct TYPE_2__ {int buf; } ;


 struct child_process CHILD_PROCESS_INIT ;
 struct strbuf STRBUF_INIT ;
 int close (int) ;
 int exit (int) ;
 int finish_command (struct child_process*) ;
 int free (int *) ;
 scalar_t__ get_protocol_http_header (int ,struct strbuf*) ;
 int http_post_buffer ;
 int packet_read (int,int *,int *,int *,int ,int ) ;
 int post_rpc (struct rpc_state*,int ) ;
 scalar_t__ start_command (struct child_process*) ;
 int strbuf_addf (struct strbuf*,char*,char const*,...) ;
 void* strbuf_detach (struct strbuf*,int *) ;
 int strbuf_read (struct strbuf*,int,int ) ;
 int strbuf_release (struct strbuf*) ;
 TYPE_1__ url ;
 int write_or_die (int,int ,int ) ;
 int * xmalloc (int ) ;
 scalar_t__ xread (int,char*,int) ;

__attribute__((used)) static int rpc_service(struct rpc_state *rpc, struct discovery *heads,
         const char **client_argv, const struct strbuf *preamble,
         struct strbuf *rpc_result)
{
 const char *svc = rpc->service_name;
 struct strbuf buf = STRBUF_INIT;
 struct child_process client = CHILD_PROCESS_INIT;
 int err = 0;

 client.in = -1;
 client.out = -1;
 client.git_cmd = 1;
 client.argv = client_argv;
 if (start_command(&client))
  exit(1);
 write_or_die(client.in, preamble->buf, preamble->len);
 if (heads)
  write_or_die(client.in, heads->buf, heads->len);

 rpc->alloc = http_post_buffer;
 rpc->buf = xmalloc(rpc->alloc);
 rpc->in = client.in;
 rpc->out = client.out;

 strbuf_addf(&buf, "%s%s", url.buf, svc);
 rpc->service_url = strbuf_detach(&buf, ((void*)0));

 strbuf_addf(&buf, "Content-Type: application/x-%s-request", svc);
 rpc->hdr_content_type = strbuf_detach(&buf, ((void*)0));

 strbuf_addf(&buf, "Accept: application/x-%s-result", svc);
 rpc->hdr_accept = strbuf_detach(&buf, ((void*)0));

 if (get_protocol_http_header(heads->version, &buf))
  rpc->protocol_header = strbuf_detach(&buf, ((void*)0));
 else
  rpc->protocol_header = ((void*)0);

 while (!err) {
  int n = packet_read(rpc->out, ((void*)0), ((void*)0), rpc->buf, rpc->alloc, 0);
  if (!n)
   break;
  rpc->pos = 0;
  rpc->len = n;
  err |= post_rpc(rpc, 0);
 }

 close(client.in);
 client.in = -1;
 if (!err) {
  strbuf_read(rpc_result, client.out, 0);
 } else {
  char buf[4096];
  for (;;)
   if (xread(client.out, buf, sizeof(buf)) <= 0)
    break;
 }

 close(client.out);
 client.out = -1;

 err |= finish_command(&client);
 free(rpc->service_url);
 free(rpc->hdr_content_type);
 free(rpc->hdr_accept);
 free(rpc->protocol_header);
 free(rpc->buf);
 strbuf_release(&buf);
 return err;
}
