
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int strbuf_add (struct strbuf*,char const*,int) ;
 int strbuf_reset (struct strbuf*) ;
 char* strchrnul (char const*,int) ;
 int unquote_c_style (struct strbuf*,char const*,char const**) ;

__attribute__((used)) static const char *parse_alt_odb_entry(const char *string,
           int sep,
           struct strbuf *out)
{
 const char *end;

 strbuf_reset(out);

 if (*string == '#') {

  end = strchrnul(string, sep);
 } else if (*string == '"' && !unquote_c_style(out, string, &end)) {






 } else {

  end = strchrnul(string, sep);
  strbuf_add(out, string, end - string);
 }

 if (*end)
  end++;
 return end;
}
