
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int dummy; } ;
struct strbuf {char* buf; size_t len; scalar_t__ alloc; } ;


 struct strbuf STRBUF_INIT ;
 int strbuf_add (struct strbuf*,char const*,int) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addf (struct strbuf*,char*,int) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_grow (struct strbuf*,size_t) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_setlen (struct strbuf*,size_t) ;
 char* strchrnul (char const*,char) ;
 size_t strftime (char*,scalar_t__,char const*,struct tm const*) ;

void strbuf_addftime(struct strbuf *sb, const char *fmt, const struct tm *tm,
       int tz_offset, int suppress_tz_name)
{
 struct strbuf munged_fmt = STRBUF_INIT;
 size_t hint = 128;
 size_t len;

 if (!*fmt)
  return;





 for (;;) {
  const char *percent = strchrnul(fmt, '%');
  strbuf_add(&munged_fmt, fmt, percent - fmt);
  if (!*percent)
   break;
  fmt = percent + 1;
  switch (*fmt) {
  case '%':
   strbuf_addstr(&munged_fmt, "%%");
   fmt++;
   break;
  case 'z':
   strbuf_addf(&munged_fmt, "%+05d", tz_offset);
   fmt++;
   break;
  case 'Z':
   if (suppress_tz_name) {
    fmt++;
    break;
   }

  default:
   strbuf_addch(&munged_fmt, '%');
  }
 }
 fmt = munged_fmt.buf;

 strbuf_grow(sb, hint);
 len = strftime(sb->buf + sb->len, sb->alloc - sb->len, fmt, tm);

 if (!len) {







  strbuf_addch(&munged_fmt, ' ');
  while (!len) {
   hint *= 2;
   strbuf_grow(sb, hint);
   len = strftime(sb->buf + sb->len, sb->alloc - sb->len,
           munged_fmt.buf, tm);
  }
  len--;
 }
 strbuf_release(&munged_fmt);
 strbuf_setlen(sb, sb->len + len);
}
