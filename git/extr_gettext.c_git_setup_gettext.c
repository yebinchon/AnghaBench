
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_LOCALE_PATH ;
 int GIT_TEXT_DOMAIN_DIR_ENVIRONMENT ;
 int LC_MESSAGES ;
 int LC_TIME ;
 int bindtextdomain (char*,char const*) ;
 int free (char*) ;
 char* getenv (int ) ;
 int init_gettext_charset (char*) ;
 int is_directory (char const*) ;
 int setlocale (int ,char*) ;
 char* system_path (int ) ;
 int textdomain (char*) ;
 int use_gettext_poison () ;

void git_setup_gettext(void)
{
 const char *podir = getenv(GIT_TEXT_DOMAIN_DIR_ENVIRONMENT);
 char *p = ((void*)0);

 if (!podir)
  podir = p = system_path(GIT_LOCALE_PATH);

 use_gettext_poison();

 if (!is_directory(podir)) {
  free(p);
  return;
 }

 bindtextdomain("git", podir);
 setlocale(LC_MESSAGES, "");
 setlocale(LC_TIME, "");
 init_gettext_charset("git");
 textdomain("git");

 free(p);
}
