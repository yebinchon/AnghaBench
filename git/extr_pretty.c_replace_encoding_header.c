
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 scalar_t__ is_encoding_utf8 (char const*) ;
 int starts_with (char*,char*) ;
 int strbuf_attach (struct strbuf*,char*,scalar_t__,scalar_t__) ;
 char* strbuf_detach (struct strbuf*,int *) ;
 int strbuf_remove (struct strbuf*,size_t,size_t) ;
 int strbuf_splice (struct strbuf*,scalar_t__,scalar_t__,char const*,scalar_t__) ;
 char* strchr (char*,char) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static char *replace_encoding_header(char *buf, const char *encoding)
{
 struct strbuf tmp = STRBUF_INIT;
 size_t start, len;
 char *cp = buf;


 while (!starts_with(cp, "encoding ")) {
  cp = strchr(cp, '\n');
  if (!cp || *++cp == '\n')
   return buf;
 }
 start = cp - buf;
 cp = strchr(cp, '\n');
 if (!cp)
  return buf;
 len = cp + 1 - (buf + start);

 strbuf_attach(&tmp, buf, strlen(buf), strlen(buf) + 1);
 if (is_encoding_utf8(encoding)) {

  strbuf_remove(&tmp, start, len);
 } else {

  strbuf_splice(&tmp, start + strlen("encoding "),
       len - strlen("encoding \n"),
       encoding, strlen(encoding));
 }
 return strbuf_detach(&tmp, ((void*)0));
}
