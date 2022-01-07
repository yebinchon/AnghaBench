
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {size_t len; char* buf; } ;
struct mailinfo {int delsp; int format_flowed; } ;


 int handle_filter (struct mailinfo*,struct strbuf*) ;
 scalar_t__ skip_prefix (char*,char*,char const**) ;
 int strbuf_add (struct strbuf*,char*,size_t) ;
 int strbuf_insert (struct strbuf*,int ,char*,size_t) ;
 int strbuf_remove (struct strbuf*,int ,int) ;
 int strbuf_reset (struct strbuf*) ;

__attribute__((used)) static void handle_filter_flowed(struct mailinfo *mi, struct strbuf *line,
     struct strbuf *prev)
{
 size_t len = line->len;
 const char *rest;

 if (!mi->format_flowed) {
  handle_filter(mi, line);
  return;
 }

 if (line->buf[len - 1] == '\n') {
  len--;
  if (len && line->buf[len - 1] == '\r')
   len--;
 }


 if (skip_prefix(line->buf, "-- ", &rest) && rest - line->buf == len) {
  if (prev->len) {
   handle_filter(mi, prev);
   strbuf_reset(prev);
  }
  handle_filter(mi, line);
  return;
 }


 if (len && line->buf[0] == ' ') {
  strbuf_remove(line, 0, 1);
  len--;
 }


 if (len && line->buf[len - 1] == ' ') {
  strbuf_add(prev, line->buf, len - !!mi->delsp);
  return;
 }


 strbuf_insert(line, 0, prev->buf, prev->len);
 strbuf_reset(prev);

 handle_filter(mi, line);
}
