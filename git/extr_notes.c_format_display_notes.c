
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct object_id {int dummy; } ;


 int assert (scalar_t__*) ;
 scalar_t__* display_notes_trees ;
 int format_note (scalar_t__,struct object_id const*,struct strbuf*,char const*,int) ;

void format_display_notes(const struct object_id *object_oid,
     struct strbuf *sb, const char *output_encoding, int raw)
{
 int i;
 assert(display_notes_trees);
 for (i = 0; display_notes_trees[i]; i++)
  format_note(display_notes_trees[i], object_oid, sb,
       output_encoding, raw);
}
