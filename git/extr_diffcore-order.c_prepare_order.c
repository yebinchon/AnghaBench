
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
typedef scalar_t__ ssize_t ;


 int ALLOC_ARRAY (char**,int) ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int die_errno (int ,char const*) ;
 char** order ;
 int order_cnt ;
 void* strbuf_detach (struct strbuf*,int *) ;
 scalar_t__ strbuf_read_file (struct strbuf*,char const*,int ) ;
 char* xmemdupz (char*,int) ;

__attribute__((used)) static void prepare_order(const char *orderfile)
{
 int cnt, pass;
 struct strbuf sb = STRBUF_INIT;
 void *map;
 char *cp, *endp;
 ssize_t sz;

 if (order)
  return;

 sz = strbuf_read_file(&sb, orderfile, 0);
 if (sz < 0)
  die_errno(_("failed to read orderfile '%s'"), orderfile);
 map = strbuf_detach(&sb, ((void*)0));
 endp = (char *) map + sz;

 for (pass = 0; pass < 2; pass++) {
  cnt = 0;
  cp = map;
  while (cp < endp) {
   char *ep;
   for (ep = cp; ep < endp && *ep != '\n'; ep++)
    ;

   if (*cp == '\n' || *cp == '#')
    ;
   else if (pass == 0)
    cnt++;
   else {
    if (*ep == '\n') {
     *ep = 0;
     order[cnt] = cp;
    } else {
     order[cnt] = xmemdupz(cp, ep - cp);
    }
    cnt++;
   }
   if (ep < endp)
    ep++;
   cp = ep;
  }
  if (pass == 0) {
   order_cnt = cnt;
   ALLOC_ARRAY(order, cnt);
  }
 }
}
