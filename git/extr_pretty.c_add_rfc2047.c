
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
typedef enum rfc2047_type { ____Placeholder_rfc2047_type } rfc2047_type ;


 scalar_t__ is_rfc2047_special (unsigned char const,int) ;
 int last_line_length (struct strbuf*) ;
 int mbs_chrlen (char const**,size_t*,char const*) ;
 int strbuf_addf (struct strbuf*,char const*,...) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_grow (struct strbuf*,size_t) ;
 int strlen (char const*) ;

__attribute__((used)) static void add_rfc2047(struct strbuf *sb, const char *line, size_t len,
         const char *encoding, enum rfc2047_type type)
{
 static const int max_encoded_length = 76;
 int i;
 int line_len = last_line_length(sb);

 strbuf_grow(sb, len * 3 + strlen(encoding) + 100);
 strbuf_addf(sb, "=?%s?q?", encoding);
 line_len += strlen(encoding) + 5;

 while (len) {







  const unsigned char *p = (const unsigned char *)line;
  int chrlen = mbs_chrlen(&line, &len, encoding);
  int is_special = (chrlen > 1) || is_rfc2047_special(*p, type);


  const char *encoded_fmt = is_special ? "=%02X" : "%c";
  int encoded_len = is_special ? 3 * chrlen : 1;
  if (line_len + encoded_len + 2 > max_encoded_length) {

   strbuf_addf(sb, "?=\n =?%s?q?", encoding);
   line_len = strlen(encoding) + 5 + 1;
  }

  for (i = 0; i < chrlen; i++)
   strbuf_addf(sb, encoded_fmt, p[i]);
  line_len += encoded_len;
 }
 strbuf_addstr(sb, "?=");
}
