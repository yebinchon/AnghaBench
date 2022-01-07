
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct rpc_service {char* name; int buffer_input; } ;


 struct strbuf STRBUF_INIT ;
 int check_content_type (struct strbuf*,int ) ;
 int content_type ;
 int end_headers (struct strbuf*) ;
 int hdr_nocache (struct strbuf*) ;
 int hdr_str (struct strbuf*,int ,int ) ;
 int run_service (char const**,int ) ;
 struct rpc_service* select_service (struct strbuf*,char*) ;
 int strbuf_addf (struct strbuf*,char*,char*) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;

__attribute__((used)) static void service_rpc(struct strbuf *hdr, char *service_name)
{
 const char *argv[] = {((void*)0), "--stateless-rpc", ".", ((void*)0)};
 struct rpc_service *svc = select_service(hdr, service_name);
 struct strbuf buf = STRBUF_INIT;

 strbuf_reset(&buf);
 strbuf_addf(&buf, "application/x-git-%s-request", svc->name);
 check_content_type(hdr, buf.buf);

 hdr_nocache(hdr);

 strbuf_reset(&buf);
 strbuf_addf(&buf, "application/x-git-%s-result", svc->name);
 hdr_str(hdr, content_type, buf.buf);

 end_headers(hdr);

 argv[0] = svc->name;
 run_service(argv, svc->buffer_input);
 strbuf_release(&buf);
}
