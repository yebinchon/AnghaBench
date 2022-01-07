
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; int len; } ;
typedef int FILE ;


 int EOF ;
 struct strbuf STRBUF_INIT ;
 int fgetc (int *) ;
 int is_rfc2822_header (struct strbuf*) ;
 int strbuf_addbuf (struct strbuf*,struct strbuf*) ;
 int strbuf_addch (struct strbuf*,char) ;
 scalar_t__ strbuf_getline_lf (struct strbuf*,int *) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_rtrim (struct strbuf*) ;
 int ungetc (int,int *) ;

__attribute__((used)) static int read_one_header_line(struct strbuf *line, FILE *in)
{
 struct strbuf continuation = STRBUF_INIT;


 if (strbuf_getline_lf(line, in))
  return 0;





 strbuf_rtrim(line);
 if (!line->len || !is_rfc2822_header(line)) {

  strbuf_addch(line, '\n');
  return 0;
 }





 for (;;) {
  int peek;

  peek = fgetc(in);
  if (peek == EOF)
   break;
  ungetc(peek, in);
  if (peek != ' ' && peek != '\t')
   break;
  if (strbuf_getline_lf(&continuation, in))
   break;
  continuation.buf[0] = ' ';
  strbuf_rtrim(&continuation);
  strbuf_addbuf(line, &continuation);
 }
 strbuf_release(&continuation);

 return 1;
}
