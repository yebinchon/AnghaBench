
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {size_t len; char* buf; } ;


 unsigned int APPEND_SIGNOFF_DEDUP ;
 struct strbuf STRBUF_INIT ;
 int WANT_COMMITTER_IDENT ;
 int fmt_name (int ) ;
 int has_conforming_footer (struct strbuf*,struct strbuf*,size_t) ;
 int sign_off_header ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,int ) ;
 int strbuf_complete_line (struct strbuf*) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_splice (struct strbuf*,size_t,int ,char const*,size_t) ;
 size_t strlen (char const*) ;
 int strncmp (char*,char*,size_t) ;

void append_signoff(struct strbuf *msgbuf, size_t ignore_footer, unsigned flag)
{
 unsigned no_dup_sob = flag & APPEND_SIGNOFF_DEDUP;
 struct strbuf sob = STRBUF_INIT;
 int has_footer;

 strbuf_addstr(&sob, sign_off_header);
 strbuf_addstr(&sob, fmt_name(WANT_COMMITTER_IDENT));
 strbuf_addch(&sob, '\n');

 if (!ignore_footer)
  strbuf_complete_line(msgbuf);





 if (msgbuf->len - ignore_footer == sob.len &&
     !strncmp(msgbuf->buf, sob.buf, sob.len))
  has_footer = 3;
 else
  has_footer = has_conforming_footer(msgbuf, &sob, ignore_footer);

 if (!has_footer) {
  const char *append_newlines = ((void*)0);
  size_t len = msgbuf->len - ignore_footer;

  if (!len) {




   append_newlines = "\n\n";
  } else if (len == 1) {




   append_newlines = "\n";
  } else if (msgbuf->buf[len - 2] != '\n') {





   append_newlines = "\n";
  }

  if (append_newlines)
   strbuf_splice(msgbuf, msgbuf->len - ignore_footer, 0,
    append_newlines, strlen(append_newlines));
 }

 if (has_footer != 3 && (!no_dup_sob || has_footer != 2))
  strbuf_splice(msgbuf, msgbuf->len - ignore_footer, 0,
    sob.buf, sob.len);

 strbuf_release(&sob);
}
