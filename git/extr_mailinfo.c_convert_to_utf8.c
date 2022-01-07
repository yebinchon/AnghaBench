
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct mailinfo {char* metainfo_charset; int input_error; } ;


 int error (char*,char const*,char*) ;
 char* reencode_string (int ,char*,char const*) ;
 scalar_t__ same_encoding (char*,char const*) ;
 int strbuf_attach (struct strbuf*,char*,int ,int ) ;
 int strlen (char*) ;

__attribute__((used)) static int convert_to_utf8(struct mailinfo *mi,
      struct strbuf *line, const char *charset)
{
 char *out;

 if (!mi->metainfo_charset || !charset || !*charset)
  return 0;

 if (same_encoding(mi->metainfo_charset, charset))
  return 0;
 out = reencode_string(line->buf, mi->metainfo_charset, charset);
 if (!out) {
  mi->input_error = -1;
  return error("cannot convert from %s to %s",
        charset, mi->metainfo_charset);
 }
 strbuf_attach(line, out, strlen(out), strlen(out));
 return 0;
}
