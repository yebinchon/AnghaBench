
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char const* buf; int len; } ;


 int IDENT_MAIL_GIVEN ;
 int author_ident_explicitly_given ;
 int committer_ident_explicitly_given ;
 int copy_email (int ,TYPE_1__*,int *) ;
 int default_email_is_bogus ;
 int free (char*) ;
 char* getenv (char*) ;
 TYPE_1__ git_default_email ;
 int ident_config_given ;
 char* query_user_email () ;
 int strbuf_addstr (TYPE_1__*,char const*) ;
 int strbuf_trim (TYPE_1__*) ;
 int xgetpwuid_self (int *) ;

const char *ident_default_email(void)
{
 if (!(ident_config_given & IDENT_MAIL_GIVEN) && !git_default_email.len) {
  const char *email = getenv("EMAIL");

  if (email && email[0]) {
   strbuf_addstr(&git_default_email, email);
   committer_ident_explicitly_given |= IDENT_MAIL_GIVEN;
   author_ident_explicitly_given |= IDENT_MAIL_GIVEN;
  } else if ((email = query_user_email()) && email[0]) {
   strbuf_addstr(&git_default_email, email);
   free((char *)email);
  } else
   copy_email(xgetpwuid_self(&default_email_is_bogus),
       &git_default_email, &default_email_is_bogus);
  strbuf_trim(&git_default_email);
 }
 return git_default_email.buf;
}
