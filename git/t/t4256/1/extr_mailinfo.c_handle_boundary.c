
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {scalar_t__ len; scalar_t__ buf; } ;
struct mailinfo {int input_error; int input; int p_hdr_data; int charset; int transfer_encoding; struct strbuf** content; struct strbuf** content_top; } ;


 int FREE_AND_NULL (struct strbuf*) ;
 struct strbuf STRBUF_INIT ;
 int TE_DONTCARE ;
 int check_header (struct mailinfo*,struct strbuf*,int ,int ) ;
 int error (char*) ;
 int find_boundary (struct mailinfo*,struct strbuf*) ;
 int handle_filter (struct mailinfo*,struct strbuf*) ;
 int memcmp (scalar_t__,char*,int) ;
 scalar_t__ read_one_header_line (struct strbuf*,int ) ;
 int strbuf_addch (struct strbuf*,char) ;
 scalar_t__ strbuf_getline_lf (struct strbuf*,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (int *) ;

__attribute__((used)) static int handle_boundary(struct mailinfo *mi, struct strbuf *line)
{
 struct strbuf newline = STRBUF_INIT;

 strbuf_addch(&newline, '\n');
again:
 if (line->len >= (*(mi->content_top))->len + 2 &&
     !memcmp(line->buf + (*(mi->content_top))->len, "--", 2)) {


  strbuf_release(*(mi->content_top));
  FREE_AND_NULL(*(mi->content_top));




  if (--mi->content_top < mi->content) {
   error("Detected mismatched boundaries, can't recover");
   mi->input_error = -1;
   mi->content_top = mi->content;
   strbuf_release(&newline);
   return 0;
  }
  handle_filter(mi, &newline);
  strbuf_release(&newline);
  if (mi->input_error)
   return 0;


  if (!find_boundary(mi, line))
   return 0;
  goto again;
 }


 mi->transfer_encoding = TE_DONTCARE;
 strbuf_reset(&mi->charset);


 while (read_one_header_line(line, mi->input))
  check_header(mi, line, mi->p_hdr_data, 0);

 strbuf_release(&newline);

 if (strbuf_getline_lf(line, mi->input))
  return 0;
 strbuf_addch(line, '\n');
 return 1;
}
