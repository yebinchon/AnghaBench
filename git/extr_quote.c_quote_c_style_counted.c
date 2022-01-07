
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
typedef size_t ssize_t ;
typedef int FILE ;


 int EMIT (char) ;
 int EMITBUF (char const*,size_t) ;
 size_t next_quote_pos (char const*,size_t) ;
 char* sq_lookup ;

__attribute__((used)) static size_t quote_c_style_counted(const char *name, ssize_t maxlen,
        struct strbuf *sb, FILE *fp, int no_dq)
{
 size_t len, count = 0;
 const char *p = name;

 for (;;) {
  int ch;

  len = next_quote_pos(p, maxlen);
  if (len == maxlen || (maxlen < 0 && !p[len]))
   break;

  if (!no_dq && p == name)
   do { if (sb) strbuf_addch(sb, ('"')); if (fp) fputc(('"'), fp); count++; } while (0);

  do { if (sb) strbuf_add(sb, (p), (len)); if (fp) fwrite((p), (len), 1, fp); count += (len); } while (0);
  do { if (sb) strbuf_addch(sb, ('\\')); if (fp) fputc(('\\'), fp); count++; } while (0);
  p += len;
  ch = (unsigned char)*p++;
  if (maxlen >= 0)
   maxlen -= len + 1;
  if (sq_lookup[ch] >= ' ') {
   do { if (sb) strbuf_addch(sb, (sq_lookup[ch])); if (fp) fputc((sq_lookup[ch]), fp); count++; } while (0);
  } else {
   do { if (sb) strbuf_addch(sb, (((ch >> 6) & 03) + '0')); if (fp) fputc((((ch >> 6) & 03) + '0'), fp); count++; } while (0);
   do { if (sb) strbuf_addch(sb, (((ch >> 3) & 07) + '0')); if (fp) fputc((((ch >> 3) & 07) + '0'), fp); count++; } while (0);
   do { if (sb) strbuf_addch(sb, (((ch >> 0) & 07) + '0')); if (fp) fputc((((ch >> 0) & 07) + '0'), fp); count++; } while (0);
  }
 }

 do { if (sb) strbuf_add(sb, (p), (len)); if (fp) fwrite((p), (len), 1, fp); count += (len); } while (0);
 if (p == name)
  return 0;

 if (!no_dq)
  do { if (sb) strbuf_addch(sb, ('"')); if (fp) fputc(('"'), fp); count++; } while (0);
 return count;
}
