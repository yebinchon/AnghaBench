
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LC_ALL ;
 int LC_CTYPE ;
 int LOCALEDIR ;
 int PACKAGE ;
 int bindtextdomain (int ,int ) ;
 char* getenv (char*) ;
 int setlocale (int ,char*) ;
 int textdomain (int ) ;

__attribute__((used)) static void
set_locale (void)
{
  char *loc_ctype;

  setlocale (LC_ALL, "");
  bindtextdomain (PACKAGE, LOCALEDIR);
  textdomain (PACKAGE);

  loc_ctype = getenv ("LC_CTYPE");
  if (loc_ctype != ((void*)0))
    setlocale (LC_CTYPE, loc_ctype);
  else if ((loc_ctype = getenv ("LC_ALL")))
    setlocale (LC_CTYPE, loc_ctype);
  else
    setlocale (LC_CTYPE, "");
}
