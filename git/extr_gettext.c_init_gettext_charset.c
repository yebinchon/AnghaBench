
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LC_CTYPE ;
 int bind_textdomain_codeset (char const*,int ) ;
 int charset ;
 int locale_charset () ;
 int setlocale (int ,char*) ;
 scalar_t__ test_vsnprintf (char*,int,char*) ;

__attribute__((used)) static void init_gettext_charset(const char *domain)
{
 setlocale(LC_CTYPE, "");
 charset = locale_charset();
 bind_textdomain_codeset(domain, charset);

 if (test_vsnprintf("%.*s", 13, "David_K\345gedal") < 0)
  setlocale(LC_CTYPE, "C");
}
