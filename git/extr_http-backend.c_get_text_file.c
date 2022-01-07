
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int hdr_nocache (struct strbuf*) ;
 int select_getanyfile (struct strbuf*) ;
 int send_local_file (struct strbuf*,char*,char*) ;

__attribute__((used)) static void get_text_file(struct strbuf *hdr, char *name)
{
 select_getanyfile(hdr);
 hdr_nocache(hdr);
 send_local_file(hdr, "text/plain", name);
}
