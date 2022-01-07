
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int regex_t ;
typedef int err ;


 int kprintf (char*,int,char*) ;
 int regcomp (int *,char const*,int) ;
 int regerror (int,int *,char*,int) ;

__attribute__((used)) static int vk_regcomp (regex_t *preg, const char *regex, int cflags) {
  char err[16384];
  int r = regcomp (preg, regex, cflags);
  if (r) {
    int l = regerror (r, preg, err, sizeof (err) - 1);
    kprintf ("%.*s\n", l, err);
  }
  return r;
}
