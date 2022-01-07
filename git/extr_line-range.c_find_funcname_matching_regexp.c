
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xdemitconf_t ;
struct TYPE_3__ {int rm_so; int rm_eo; } ;
typedef TYPE_1__ regmatch_t ;
typedef int regex_t ;


 int REG_NOMATCH ;
 int die (char*,char*) ;
 scalar_t__ match_funcname (int *,char*,char*) ;
 int regerror (int,int *,char*,int) ;
 int regexec (int *,char const*,int,TYPE_1__*,int ) ;

__attribute__((used)) static const char *find_funcname_matching_regexp(xdemitconf_t *xecfg, const char *start,
       regex_t *regexp)
{
 int reg_error;
 regmatch_t match[1];
 while (1) {
  const char *bol, *eol;
  reg_error = regexec(regexp, start, 1, match, 0);
  if (reg_error == REG_NOMATCH)
   return ((void*)0);
  else if (reg_error) {
   char errbuf[1024];
   regerror(reg_error, regexp, errbuf, 1024);
   die("-L parameter: regexec() failed: %s", errbuf);
  }

  bol = start+match[0].rm_so;
  eol = start+match[0].rm_eo;
  while (bol > start && *bol != '\n')
   bol--;
  if (*bol == '\n')
   bol++;
  while (*eol && *eol != '\n')
   eol++;
  if (*eol == '\n')
   eol++;

  if (match_funcname(xecfg, (char*) bol, (char*) eol))
   return bol;
  start = eol;
 }
}
