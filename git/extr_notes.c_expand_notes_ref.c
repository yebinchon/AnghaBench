
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;


 scalar_t__ starts_with (int ,char*) ;
 int strbuf_insert (struct strbuf*,int ,char*,int) ;

void expand_notes_ref(struct strbuf *sb)
{
 if (starts_with(sb->buf, "refs/notes/"))
  return;
 else if (starts_with(sb->buf, "notes/"))
  strbuf_insert(sb, 0, "refs/", 5);
 else
  strbuf_insert(sb, 0, "refs/notes/", 11);
}
