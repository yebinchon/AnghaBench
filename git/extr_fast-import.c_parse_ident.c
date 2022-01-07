
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 struct strbuf STRBUF_INIT ;



 int datestamp (struct strbuf*) ;
 int die (char*,char const*,...) ;
 int parse_date (char const*,struct strbuf*) ;
 int strbuf_add (struct strbuf*,char const*,size_t) ;
 char* strbuf_detach (struct strbuf*,int *) ;
 int strcmp (char*,char const*) ;
 int strcspn (char const*,char*) ;
 int validate_raw_date (char const*,struct strbuf*) ;
 int whenspec ;

__attribute__((used)) static char *parse_ident(const char *buf)
{
 const char *ltgt;
 size_t name_len;
 struct strbuf ident = STRBUF_INIT;


 if (*buf == '<')
  --buf;

 ltgt = buf + strcspn(buf, "<>");
 if (*ltgt != '<')
  die("Missing < in ident string: %s", buf);
 if (ltgt != buf && ltgt[-1] != ' ')
  die("Missing space before < in ident string: %s", buf);
 ltgt = ltgt + 1 + strcspn(ltgt + 1, "<>");
 if (*ltgt != '>')
  die("Missing > in ident string: %s", buf);
 ltgt++;
 if (*ltgt != ' ')
  die("Missing space after > in ident string: %s", buf);
 ltgt++;
 name_len = ltgt - buf;
 strbuf_add(&ident, buf, name_len);

 switch (whenspec) {
 case 129:
  if (validate_raw_date(ltgt, &ident) < 0)
   die("Invalid raw date \"%s\" in ident: %s", ltgt, buf);
  break;
 case 128:
  if (parse_date(ltgt, &ident) < 0)
   die("Invalid rfc2822 date \"%s\" in ident: %s", ltgt, buf);
  break;
 case 130:
  if (strcmp("now", ltgt))
   die("Date in ident must be 'now': %s", buf);
  datestamp(&ident);
  break;
 }

 return strbuf_detach(&ident, ((void*)0));
}
