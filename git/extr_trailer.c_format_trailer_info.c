
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trailer_info {size_t trailer_nr; char** trailers; scalar_t__ trailer_start; scalar_t__ trailer_end; } ;
struct strbuf {size_t len; int buf; } ;
struct process_trailer_options {struct strbuf* separator; int only_trailers; int value_only; scalar_t__ unfold; int filter_data; scalar_t__ (* filter ) (struct strbuf*,int ) ;} ;
typedef int ssize_t ;


 struct strbuf STRBUF_INIT ;
 int find_separator (char*,int ) ;
 int parse_trailer (struct strbuf*,struct strbuf*,int *,char*,int) ;
 int separators ;
 int strbuf_add (struct strbuf*,scalar_t__,scalar_t__) ;
 int strbuf_addbuf (struct strbuf*,struct strbuf*) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addf (struct strbuf*,char*,int ) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_rtrim (struct strbuf*) ;
 scalar_t__ stub1 (struct strbuf*,int ) ;
 int unfold_value (struct strbuf*) ;

__attribute__((used)) static void format_trailer_info(struct strbuf *out,
    const struct trailer_info *info,
    const struct process_trailer_options *opts)
{
 size_t origlen = out->len;
 size_t i;


 if (!opts->only_trailers && !opts->unfold && !opts->filter && !opts->separator) {
  strbuf_add(out, info->trailer_start,
      info->trailer_end - info->trailer_start);
  return;
 }

 for (i = 0; i < info->trailer_nr; i++) {
  char *trailer = info->trailers[i];
  ssize_t separator_pos = find_separator(trailer, separators);

  if (separator_pos >= 1) {
   struct strbuf tok = STRBUF_INIT;
   struct strbuf val = STRBUF_INIT;

   parse_trailer(&tok, &val, ((void*)0), trailer, separator_pos);
   if (!opts->filter || opts->filter(&tok, opts->filter_data)) {
    if (opts->unfold)
     unfold_value(&val);

    if (opts->separator && out->len != origlen)
     strbuf_addbuf(out, opts->separator);
    if (!opts->value_only)
     strbuf_addf(out, "%s: ", tok.buf);
    strbuf_addbuf(out, &val);
    if (!opts->separator)
     strbuf_addch(out, '\n');
   }
   strbuf_release(&tok);
   strbuf_release(&val);

  } else if (!opts->only_trailers) {
   if (opts->separator && out->len != origlen) {
    strbuf_addbuf(out, opts->separator);
   }
   strbuf_addstr(out, trailer);
   if (opts->separator) {
    strbuf_rtrim(out);
   }
  }
 }

}
