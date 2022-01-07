
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; scalar_t__ len; } ;
struct mailinfo {int transfer_encoding; scalar_t__ input_error; scalar_t__* content_top; int input; } ;


 struct strbuf STRBUF_INIT ;


 int decode_transfer_encoding (struct mailinfo*,struct strbuf*) ;
 int find_boundary (struct mailinfo*,struct strbuf*) ;
 int flush_inbody_header_accum (struct mailinfo*) ;
 int handle_boundary (struct mailinfo*,struct strbuf*) ;
 int handle_filter (struct mailinfo*,struct strbuf*) ;
 int handle_filter_flowed (struct mailinfo*,struct strbuf*,struct strbuf*) ;
 scalar_t__ is_multipart_boundary (struct mailinfo*,struct strbuf*) ;
 int strbuf_addbuf (struct strbuf*,struct strbuf*) ;
 int strbuf_getwholeline (struct strbuf*,int ,char) ;
 int strbuf_insert (struct strbuf*,int ,char*,scalar_t__) ;
 int strbuf_list_free (struct strbuf**) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 struct strbuf** strbuf_split (struct strbuf*,char) ;

__attribute__((used)) static void handle_body(struct mailinfo *mi, struct strbuf *line)
{
 struct strbuf prev = STRBUF_INIT;


 if (*(mi->content_top)) {
  if (!find_boundary(mi, line))
   goto handle_body_out;
 }

 do {

  if (*(mi->content_top) && is_multipart_boundary(mi, line)) {

   if (prev.len) {
    handle_filter(mi, &prev);
    strbuf_reset(&prev);
   }
   if (!handle_boundary(mi, line))
    goto handle_body_out;
  }


  decode_transfer_encoding(mi, line);

  switch (mi->transfer_encoding) {
  case 129:
  case 128:
  {
   struct strbuf **lines, **it, *sb;


   strbuf_insert(line, 0, prev.buf, prev.len);
   strbuf_reset(&prev);






   lines = strbuf_split(line, '\n');
   for (it = lines; (sb = *it); it++) {
    if (*(it + 1) == ((void*)0))
     if (sb->buf[sb->len - 1] != '\n') {

      strbuf_addbuf(&prev, sb);
      break;
     }
    handle_filter_flowed(mi, sb, &prev);
   }




   strbuf_list_free(lines);
   break;
  }
  default:
   handle_filter_flowed(mi, line, &prev);
  }

  if (mi->input_error)
   break;
 } while (!strbuf_getwholeline(line, mi->input, '\n'));

 if (prev.len)
  handle_filter(mi, &prev);

 flush_inbody_header_accum(mi);

handle_body_out:
 strbuf_release(&prev);
}
