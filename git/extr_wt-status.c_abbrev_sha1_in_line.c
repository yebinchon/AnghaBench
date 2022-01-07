
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct object_id {int dummy; } ;


 int DEFAULT_ABBREV ;
 int get_oid (int ,struct object_id*) ;
 scalar_t__ starts_with (int ,char*) ;
 int strbuf_add_unique_abbrev (struct strbuf*,struct object_id*,int ) ;
 int strbuf_addbuf (struct strbuf*,struct strbuf*) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_list_free (struct strbuf**) ;
 int strbuf_reset (struct strbuf*) ;
 struct strbuf** strbuf_split_max (struct strbuf*,char,int) ;
 int strbuf_trim (struct strbuf*) ;

__attribute__((used)) static void abbrev_sha1_in_line(struct strbuf *line)
{
 struct strbuf **split;
 int i;

 if (starts_with(line->buf, "exec ") ||
     starts_with(line->buf, "x ") ||
     starts_with(line->buf, "label ") ||
     starts_with(line->buf, "l "))
  return;

 split = strbuf_split_max(line, ' ', 3);
 if (split[0] && split[1]) {
  struct object_id oid;





  strbuf_trim(split[1]);
  if (!get_oid(split[1]->buf, &oid)) {
   strbuf_reset(split[1]);
   strbuf_add_unique_abbrev(split[1], &oid,
       DEFAULT_ABBREV);
   strbuf_addch(split[1], ' ');
   strbuf_reset(line);
   for (i = 0; split[i]; i++)
    strbuf_addbuf(line, split[i]);
  }
 }
 strbuf_list_free(split);
}
