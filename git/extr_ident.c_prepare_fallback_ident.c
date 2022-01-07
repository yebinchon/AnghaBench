
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IDENT_MAIL_GIVEN ;
 int IDENT_NAME_GIVEN ;
 int author_ident_explicitly_given ;
 int committer_ident_explicitly_given ;
 int set_env_if (char*,char const*,int *,int ) ;

void prepare_fallback_ident(const char *name, const char *email)
{
 set_env_if("GIT_AUTHOR_NAME", name,
     &author_ident_explicitly_given, IDENT_NAME_GIVEN);
 set_env_if("GIT_AUTHOR_EMAIL", email,
     &author_ident_explicitly_given, IDENT_MAIL_GIVEN);
 set_env_if("GIT_COMMITTER_NAME", name,
     &committer_ident_explicitly_given, IDENT_NAME_GIVEN);
 set_env_if("GIT_COMMITTER_EMAIL", email,
     &committer_ident_explicitly_given, IDENT_MAIL_GIVEN);
}
