
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int head_ref_namespaced (int ,struct strbuf*) ;
 int select_getanyfile (struct strbuf*) ;
 int send_strbuf (struct strbuf*,char*,struct strbuf*) ;
 int show_head_ref ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void get_head(struct strbuf *hdr, char *arg)
{
 struct strbuf buf = STRBUF_INIT;

 select_getanyfile(hdr);
 head_ref_namespaced(show_head_ref, &buf);
 send_strbuf(hdr, "text/plain", &buf);
 strbuf_release(&buf);
}
