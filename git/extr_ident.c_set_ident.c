
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IDENT_MAIL_GIVEN ;
 int IDENT_NAME_GIVEN ;
 int author_ident_explicitly_given ;
 int committer_ident_explicitly_given ;
 int config_error_nonbool (char const*) ;
 int git_author_email ;
 int git_author_name ;
 int git_committer_email ;
 int git_committer_name ;
 int git_default_email ;
 int git_default_name ;
 int ident_config_given ;
 int strbuf_addstr (int *,char const*) ;
 int strbuf_reset (int *) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int set_ident(const char *var, const char *value)
{
 if (!strcmp(var, "author.name")) {
  if (!value)
   return config_error_nonbool(var);
  strbuf_reset(&git_author_name);
  strbuf_addstr(&git_author_name, value);
  author_ident_explicitly_given |= IDENT_NAME_GIVEN;
  ident_config_given |= IDENT_NAME_GIVEN;
  return 0;
 }

 if (!strcmp(var, "author.email")) {
  if (!value)
   return config_error_nonbool(var);
  strbuf_reset(&git_author_email);
  strbuf_addstr(&git_author_email, value);
  author_ident_explicitly_given |= IDENT_MAIL_GIVEN;
  ident_config_given |= IDENT_MAIL_GIVEN;
  return 0;
 }

 if (!strcmp(var, "committer.name")) {
  if (!value)
   return config_error_nonbool(var);
  strbuf_reset(&git_committer_name);
  strbuf_addstr(&git_committer_name, value);
  committer_ident_explicitly_given |= IDENT_NAME_GIVEN;
  ident_config_given |= IDENT_NAME_GIVEN;
  return 0;
 }

 if (!strcmp(var, "committer.email")) {
  if (!value)
   return config_error_nonbool(var);
  strbuf_reset(&git_committer_email);
  strbuf_addstr(&git_committer_email, value);
  committer_ident_explicitly_given |= IDENT_MAIL_GIVEN;
  ident_config_given |= IDENT_MAIL_GIVEN;
  return 0;
 }

 if (!strcmp(var, "user.name")) {
  if (!value)
   return config_error_nonbool(var);
  strbuf_reset(&git_default_name);
  strbuf_addstr(&git_default_name, value);
  committer_ident_explicitly_given |= IDENT_NAME_GIVEN;
  author_ident_explicitly_given |= IDENT_NAME_GIVEN;
  ident_config_given |= IDENT_NAME_GIVEN;
  return 0;
 }

 if (!strcmp(var, "user.email")) {
  if (!value)
   return config_error_nonbool(var);
  strbuf_reset(&git_default_email);
  strbuf_addstr(&git_default_email, value);
  committer_ident_explicitly_given |= IDENT_MAIL_GIVEN;
  author_ident_explicitly_given |= IDENT_MAIL_GIVEN;
  ident_config_given |= IDENT_MAIL_GIVEN;
  return 0;
 }

 return 0;
}
