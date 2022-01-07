
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IDENT_MAIL_GIVEN ;
 int IDENT_NAME_GIVEN ;
 int WANT_COMMITTER_IDENT ;
 int committer_ident_explicitly_given ;
 char const* fmt_ident (scalar_t__,scalar_t__,int ,scalar_t__,int) ;
 scalar_t__ getenv (char*) ;

const char *git_committer_info(int flag)
{
 if (getenv("GIT_COMMITTER_NAME"))
  committer_ident_explicitly_given |= IDENT_NAME_GIVEN;
 if (getenv("GIT_COMMITTER_EMAIL"))
  committer_ident_explicitly_given |= IDENT_MAIL_GIVEN;
 return fmt_ident(getenv("GIT_COMMITTER_NAME"),
    getenv("GIT_COMMITTER_EMAIL"),
    WANT_COMMITTER_IDENT,
    getenv("GIT_COMMITTER_DATE"),
    flag);
}
