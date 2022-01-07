
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rm_so; } ;
typedef TYPE_1__ regmatch_t ;
typedef int regex_t ;


 int REG_EXTENDED ;
 int REG_NEWLINE ;
 int die (char*,...) ;
 scalar_t__ regcomp (int *,char*,int) ;
 scalar_t__ regexec (int *,char*,int,TYPE_1__*,int ) ;

__attribute__((used)) static int test_regex_bug(void)
{
 char *pat = "[^={} \t]+";
 char *str = "={}\nfred";
 regex_t r;
 regmatch_t m[1];

 if (regcomp(&r, pat, REG_EXTENDED | REG_NEWLINE))
  die("failed regcomp() for pattern '%s'", pat);
 if (regexec(&r, str, 1, m, 0))
  die("no match of pattern '%s' to string '%s'", pat, str);


 if (m[0].rm_so == 3)
  die("regex bug confirmed: re-build git with NO_REGEX=1");

 return 0;
}
