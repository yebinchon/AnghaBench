
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct rpc_service {char* name; } ;


 struct strbuf STRBUF_INIT ;
 int content_type ;
 scalar_t__ determine_protocol_version_server () ;
 int end_headers (struct strbuf*) ;
 int for_each_namespaced_ref (int ,struct strbuf*) ;
 char* get_parameter (char*) ;
 int hdr_nocache (struct strbuf*) ;
 int hdr_str (struct strbuf*,int ,int ) ;
 int packet_flush (int) ;
 int packet_write_fmt (int,char*,char*) ;
 scalar_t__ protocol_v2 ;
 int run_service (char const**,int ) ;
 int select_getanyfile (struct strbuf*) ;
 struct rpc_service* select_service (struct strbuf*,char const*) ;
 int send_strbuf (struct strbuf*,char*,struct strbuf*) ;
 int show_text_ref ;
 int strbuf_addf (struct strbuf*,char*,char*) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void get_info_refs(struct strbuf *hdr, char *arg)
{
 const char *service_name = get_parameter("service");
 struct strbuf buf = STRBUF_INIT;

 hdr_nocache(hdr);

 if (service_name) {
  const char *argv[] = {((void*)0) ,
   "--stateless-rpc", "--advertise-refs",
   ".", ((void*)0)};
  struct rpc_service *svc = select_service(hdr, service_name);

  strbuf_addf(&buf, "application/x-git-%s-advertisement",
   svc->name);
  hdr_str(hdr, content_type, buf.buf);
  end_headers(hdr);


  if (determine_protocol_version_server() != protocol_v2) {
   packet_write_fmt(1, "# service=git-%s\n", svc->name);
   packet_flush(1);
  }

  argv[0] = svc->name;
  run_service(argv, 0);

 } else {
  select_getanyfile(hdr);
  for_each_namespaced_ref(show_text_ref, &buf);
  send_strbuf(hdr, "text/plain", &buf);
 }
 strbuf_release(&buf);
}
