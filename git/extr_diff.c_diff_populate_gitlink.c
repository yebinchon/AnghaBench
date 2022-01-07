
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; } ;
struct diff_filespec {int should_free; int * data; int size; int oid; scalar_t__ dirty_submodule; } ;


 struct strbuf STRBUF_INIT ;
 int oid_to_hex (int *) ;
 int strbuf_addf (struct strbuf*,char*,int ,char*) ;
 int * strbuf_detach (struct strbuf*,int *) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static int diff_populate_gitlink(struct diff_filespec *s, int size_only)
{
 struct strbuf buf = STRBUF_INIT;
 char *dirty = "";


 if (s->dirty_submodule)
  dirty = "-dirty";

 strbuf_addf(&buf, "Subproject commit %s%s\n",
      oid_to_hex(&s->oid), dirty);
 s->size = buf.len;
 if (size_only) {
  s->data = ((void*)0);
  strbuf_release(&buf);
 } else {
  s->data = strbuf_detach(&buf, ((void*)0));
  s->should_free = 1;
 }
 return 0;
}
