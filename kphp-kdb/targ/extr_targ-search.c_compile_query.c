
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Q_aux_num ;
 scalar_t__ Q_limit ;
 scalar_t__ Q_order ;
 scalar_t__ Qfree ;
 scalar_t__ Qq ;
 char* Qs ;
 char* Qs0 ;
 scalar_t__ Qw ;
 scalar_t__ parse_query (int) ;
 int vkprintf (int,char*,char*) ;

char *compile_query (char *str) {
  Qw = 0;
  Qfree = 0;
  Qs = Qs0 = str;
  vkprintf (3, "parsing query `%s'\n", str);
  Qq = parse_query (128);
  Q_order = 0;
  Q_limit = 0;
  Q_aux_num = 0;
  return Qq ? 0 : Qs;
}
