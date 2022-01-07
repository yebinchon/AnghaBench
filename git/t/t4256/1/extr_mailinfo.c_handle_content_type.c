
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; int len; } ;
struct mailinfo {int input_error; struct strbuf charset; struct strbuf** content_top; struct strbuf** content; void* delsp; void* format_flowed; } ;


 size_t MAX_BOUNDARIES ;
 int error (char*) ;
 int free (struct strbuf*) ;
 void* has_attr_value (int ,char*,char*) ;
 scalar_t__ slurp_attr (int ,char*,struct strbuf*) ;
 int strbuf_init (struct strbuf*,int ) ;
 int strbuf_insert (struct strbuf*,int ,char*,int) ;
 int strbuf_release (struct strbuf*) ;
 struct strbuf* xmalloc (int) ;

__attribute__((used)) static void handle_content_type(struct mailinfo *mi, struct strbuf *line)
{
 struct strbuf *boundary = xmalloc(sizeof(struct strbuf));
 strbuf_init(boundary, line->len);

 mi->format_flowed = has_attr_value(line->buf, "format=", "flowed");
 mi->delsp = has_attr_value(line->buf, "delsp=", "yes");

 if (slurp_attr(line->buf, "boundary=", boundary)) {
  strbuf_insert(boundary, 0, "--", 2);
  if (++mi->content_top >= &mi->content[MAX_BOUNDARIES]) {
   error("Too many boundaries to handle");
   mi->input_error = -1;
   mi->content_top = &mi->content[MAX_BOUNDARIES] - 1;
   return;
  }
  *(mi->content_top) = boundary;
  boundary = ((void*)0);
 }
 slurp_attr(line->buf, "charset=", &mi->charset);

 if (boundary) {
  strbuf_release(boundary);
  free(boundary);
 }
}
