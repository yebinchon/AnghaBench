
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * strchr (char const*,char) ;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static int isoption(const char* text, char shortopt, const char* longopt, size_t *short_opts) {
  if (text[0] != '-' || text[1] == '-')
    *short_opts = 0;
  if (text[0] != '-') return 0;


  if (text[1] == '-' && !strcmp(text+2, longopt)) return 1;
  else if (text[1] == '-') return 0;


  if (!shortopt) return 0;
  if (strchr(text, shortopt) != ((void*)0)) {
    (*short_opts)++;
    return 1;
  }
  return 0;
}
