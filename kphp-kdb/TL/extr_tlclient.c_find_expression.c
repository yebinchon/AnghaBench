
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_expression {int dummy; } ;


 int TL_SECTION_FUNCTIONS ;
 int TL_SECTION_TYPES ;
 int compiler ;
 int cstr_free (char**) ;
 char* cstr_substr (char*,int,int) ;
 int isspace (char) ;
 char* rl_line_buffer ;
 struct tl_expression* tl_list_expressions_find_by_combinator_name (int *,int ,char*,int *) ;

struct tl_expression *find_expression (int start) {
  int brackets_cnt = 0, o = start;
  while (o >= 0 && (rl_line_buffer[o] != '(' || brackets_cnt > 0)) {
    if (rl_line_buffer[o] == '(') {
      brackets_cnt--;
    }
    if (rl_line_buffer[o] == ')') {
      brackets_cnt++;
    }
    o--;
  }

  if (o >= 0 && rl_line_buffer[o] == '(') {
    int m = o + 1;
    while (!isspace (rl_line_buffer[m])) {
      m++;
    }
    char *combinator_name = cstr_substr (rl_line_buffer, o + 1, m);
    struct tl_expression *E = tl_list_expressions_find_by_combinator_name (&compiler, o ? TL_SECTION_TYPES : TL_SECTION_FUNCTIONS, combinator_name, ((void*)0));
    cstr_free (&combinator_name);
    return E;
  }
  return ((void*)0);
}
