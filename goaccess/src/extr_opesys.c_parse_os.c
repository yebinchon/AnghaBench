
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ real_os; } ;


 int OPESYS_TYPE_LEN ;
 char* alloc_string (int ) ;
 TYPE_1__ conf ;
 int count_matches (char const*,char) ;
 char* get_real_android (char*) ;
 char* get_real_mac_osx (char*) ;
 char* get_real_win (char*) ;
 char const*** os ;
 char* parse_android (char*) ;
 char const* parse_ios (char*,int) ;
 char* parse_osx (char*) ;
 int parse_others (char*,int) ;
 char* strchr (char const*,char) ;
 int * strstr (char const*,char*) ;
 char* xstrdup (char const*) ;
 int xstrncpy (char*,char const*,int ) ;

__attribute__((used)) static char *
parse_os (const char *str, char *tkn, char *os_type, int idx)
{
  char *b;
  int spaces = 0;

  xstrncpy (os_type, os[idx][1], OPESYS_TYPE_LEN);

  if ((strstr (str, "Windows")) != ((void*)0))
    return conf.real_os && (b = get_real_win (tkn)) ? b : xstrdup (os[idx][0]);

  if ((strstr (tkn, "Android")) != ((void*)0)) {
    tkn = parse_android (tkn);
    return conf.real_os ? get_real_android (tkn) : xstrdup (tkn);
  }

  if (strstr (tkn, "iPad") || strstr (tkn, "iPod"))
    return xstrdup (parse_ios (tkn, 4));
  if (strstr (tkn, "iPhone"))
    return xstrdup (parse_ios (tkn, 6));

  if ((strstr (tkn, "OS X")) != ((void*)0)) {
    tkn = parse_osx (tkn);
    return conf.real_os ? get_real_mac_osx (tkn) : xstrdup (tkn);
  }


  if ((strstr (tkn, "Darwin")) != ((void*)0)) {
    if ((b = strchr (str, ' ')))
      *b = 0;
    return xstrdup (str);
  }

  spaces = count_matches (os[idx][0], ' ');

  return alloc_string (parse_others (tkn, spaces));
}
