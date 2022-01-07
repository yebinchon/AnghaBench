
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {size_t len; int buf; } ;


 int ARRAY_SIZE (char const**) ;
 int F_OK ;
 struct strbuf STRBUF_INIT ;
 int access (int ,int ) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_setlen (struct strbuf*,size_t) ;
 int strip_suffix_mem (int ,size_t*,char*) ;
 int unlink (int ) ;

void unlink_pack_path(const char *pack_name, int force_delete)
{
 static const char *exts[] = {".pack", ".idx", ".keep", ".bitmap", ".promisor"};
 int i;
 struct strbuf buf = STRBUF_INIT;
 size_t plen;

 strbuf_addstr(&buf, pack_name);
 strip_suffix_mem(buf.buf, &buf.len, ".pack");
 plen = buf.len;

 if (!force_delete) {
  strbuf_addstr(&buf, ".keep");
  if (!access(buf.buf, F_OK)) {
   strbuf_release(&buf);
   return;
  }
 }

 for (i = 0; i < ARRAY_SIZE(exts); i++) {
  strbuf_setlen(&buf, plen);
  strbuf_addstr(&buf, exts[i]);
  unlink(buf.buf);
 }

 strbuf_release(&buf);
}
