
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct packed_git {scalar_t__ pack_name; scalar_t__ pack_local; struct packed_git* next; } ;


 struct strbuf STRBUF_INIT ;
 struct packed_git* get_all_packs (int ) ;
 int get_object_directory () ;
 int hdr_nocache (struct strbuf*) ;
 int select_getanyfile (struct strbuf*) ;
 int send_strbuf (struct strbuf*,char*,struct strbuf*) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addf (struct strbuf*,char*,scalar_t__) ;
 int strbuf_grow (struct strbuf*,size_t) ;
 int strbuf_release (struct strbuf*) ;
 size_t strlen (int ) ;
 int the_repository ;

__attribute__((used)) static void get_info_packs(struct strbuf *hdr, char *arg)
{
 size_t objdirlen = strlen(get_object_directory());
 struct strbuf buf = STRBUF_INIT;
 struct packed_git *p;
 size_t cnt = 0;

 select_getanyfile(hdr);
 for (p = get_all_packs(the_repository); p; p = p->next) {
  if (p->pack_local)
   cnt++;
 }

 strbuf_grow(&buf, cnt * 53 + 2);
 for (p = get_all_packs(the_repository); p; p = p->next) {
  if (p->pack_local)
   strbuf_addf(&buf, "P %s\n", p->pack_name + objdirlen + 6);
 }
 strbuf_addch(&buf, '\n');

 hdr_nocache(hdr);
 send_strbuf(hdr, "text/plain; charset=utf-8", &buf);
 strbuf_release(&buf);
}
