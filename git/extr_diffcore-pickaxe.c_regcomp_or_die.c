
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int regex_t ;


 int die (char*,char*) ;
 int regcomp (int *,char const*,int) ;
 int regerror (int,int *,char*,int) ;

__attribute__((used)) static void regcomp_or_die(regex_t *regex, const char *needle, int cflags)
{
 int err = regcomp(regex, needle, cflags);
 if (err) {

  char errbuf[1024];
  regerror(err, regex, errbuf, 1024);
  die("invalid regex: %s", errbuf);
 }
}
