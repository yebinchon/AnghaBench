
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 char const* URL_UNSAFE_CHARS ;
 int hex2chr (char const*) ;
 int strbuf_addch (struct strbuf*,int) ;
 int strbuf_addf (struct strbuf*,char*,unsigned char) ;
 scalar_t__ strchr (char const*,int) ;

__attribute__((used)) static int append_normalized_escapes(struct strbuf *buf,
         const char *from,
         size_t from_len,
         const char *esc_extra,
         const char *esc_ok)
{
 while (from_len) {
  int ch = *from++;
  int was_esc = 0;

  from_len--;
  if (ch == '%') {
   if (from_len < 2)
    return 0;
   ch = hex2chr(from);
   if (ch < 0)
    return 0;
   from += 2;
   from_len -= 2;
   was_esc = 1;
  }
  if ((unsigned char)ch <= 0x1F || (unsigned char)ch >= 0x7F ||
      strchr(URL_UNSAFE_CHARS, ch) ||
      (esc_extra && strchr(esc_extra, ch)) ||
      (was_esc && strchr(esc_ok, ch)))
   strbuf_addf(buf, "%%%02X", (unsigned char)ch);
  else
   strbuf_addch(buf, ch);
 }

 return 1;
}
