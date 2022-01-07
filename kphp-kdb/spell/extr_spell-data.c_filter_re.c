
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rm_so; int rm_eo; } ;
typedef TYPE_1__ regmatch_t ;
typedef int regex_t ;


 int regexec (int *,char*,size_t,TYPE_1__*,int ) ;

__attribute__((used)) static void filter_re (char *text, regex_t *re) {
  regmatch_t pmatch;
  size_t nmatch = 1;
  while (!regexec (re, text, nmatch, &pmatch, 0)) {
    int j;
    for (j = pmatch.rm_so; j < pmatch.rm_eo; j++) {
      text[j] = ' ';
    }
    text += pmatch.rm_eo;
  }
}
