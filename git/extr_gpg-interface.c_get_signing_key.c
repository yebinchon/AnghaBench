
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IDENT_NO_DATE ;
 int IDENT_STRICT ;
 char const* configured_signing_key ;
 char const* git_committer_info (int) ;

const char *get_signing_key(void)
{
 if (configured_signing_key)
  return configured_signing_key;
 return git_committer_info(IDENT_STRICT|IDENT_NO_DATE);
}
