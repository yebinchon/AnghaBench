
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rm_so; } ;
typedef TYPE_1__ regmatch_t ;
typedef int regex_t ;
typedef char* (* nth_line_fn_t ) (void*,long) ;


 int REG_NEWLINE ;
 int die (char*,...) ;
 int regcomp (int *,char const*,int ) ;
 int regerror (int,int *,char*,int) ;
 int regexec (int *,char const*,int,TYPE_1__*,int ) ;
 int regfree (int *) ;
 long strtol (char const*,char**,int) ;

__attribute__((used)) static const char *parse_loc(const char *spec, nth_line_fn_t nth_line,
        void *data, long lines, long begin, long *ret)
{
 char *term;
 const char *line;
 long num;
 int reg_error;
 regex_t regexp;
 regmatch_t match[1];





 if (1 <= begin && (spec[0] == '+' || spec[0] == '-')) {
  num = strtol(spec + 1, &term, 10);
  if (term != spec + 1) {
   if (!ret)
    return term;
   if (num == 0)
    die("-L invalid empty range");
   if (spec[0] == '-')
    num = 0 - num;
   if (0 < num)
    *ret = begin + num - 2;
   else if (!num)
    *ret = begin;
   else
    *ret = begin + num > 0 ? begin + num : 1;
   return term;
  }
  return spec;
 }
 num = strtol(spec, &term, 10);
 if (term != spec) {
  if (ret) {
   if (num <= 0)
    die("-L invalid line number: %ld", num);
   *ret = num;
  }
  return term;
 }

 if (begin < 0) {
  if (spec[0] != '^')
   begin = -begin;
  else {
   begin = 1;
   spec++;
  }
 }

 if (spec[0] != '/')
  return spec;


 for (term = (char *) spec + 1; *term && *term != '/'; term++) {
  if (*term == '\\')
   term++;
 }
 if (*term != '/')
  return spec;


 if (!ret)
  return term+1;


 *term = 0;
 begin--;
 line = nth_line(data, begin);

 if (!(reg_error = regcomp(&regexp, spec + 1, REG_NEWLINE)) &&
     !(reg_error = regexec(&regexp, line, 1, match, 0))) {
  const char *cp = line + match[0].rm_so;
  const char *nline;

  while (begin++ < lines) {
   nline = nth_line(data, begin);
   if (line <= cp && cp < nline)
    break;
   line = nline;
  }
  *ret = begin;
  regfree(&regexp);
  *term++ = '/';
  return term;
 }
 else {
  char errbuf[1024];
  regerror(reg_error, &regexp, errbuf, 1024);
  die("-L parameter '%s' starting at line %ld: %s",
      spec + 1, begin + 1, errbuf);
 }
}
