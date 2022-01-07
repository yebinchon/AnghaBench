
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct passwd {int pw_name; } ;


 int add_domainname (struct strbuf*,int*) ;
 int add_mailname_host (struct strbuf*) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,int ) ;

__attribute__((used)) static void copy_email(const struct passwd *pw, struct strbuf *email,
         int *is_bogus)
{




 strbuf_addstr(email, pw->pw_name);
 strbuf_addch(email, '@');

 if (!add_mailname_host(email))
  return;
 add_domainname(email, is_bogus);
}
