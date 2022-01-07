
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct object_id {int dummy; } ;


 int expand_notes_ref (struct strbuf*) ;
 scalar_t__ get_oid (int ,struct object_id*) ;

void expand_loose_notes_ref(struct strbuf *sb)
{
 struct object_id object;

 if (get_oid(sb->buf, &object)) {

  expand_notes_ref(sb);
 }
}
