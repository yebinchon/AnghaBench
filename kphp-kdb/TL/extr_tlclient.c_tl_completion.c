
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_expression {int dummy; } ;


 int client_command_generator ;
 int cstr_free (char**) ;
 char* cstr_substr (char*,int,int) ;
 struct tl_expression* expected_expr ;
 scalar_t__ expected_type ;
 struct tl_expression* find_expression (int) ;
 int isspace (char) ;
 int memcmp (char*,char*,int) ;
 char** rl_completion_matches (char const*,int ) ;
 char* rl_line_buffer ;
 int tl_arg_generator ;
 int tl_command_generator ;
 scalar_t__ tl_expression_get_argument_type (struct tl_expression*,char*) ;
 int tl_type_generator ;

__attribute__((used)) static char **tl_completion (const char *text, int start, int end) {
  if (start == 0) {
    return rl_completion_matches (text, client_command_generator);
  }

  if ( (start == 1 && rl_line_buffer[0] == '(') || (start == 5 && !memcmp (rl_line_buffer, "help ", 5))) {
    return rl_completion_matches (text, tl_command_generator);
  }

  int j = start - 1;
  while (j > 0 && rl_line_buffer[j] != '(' && !isspace (rl_line_buffer[j])) {
    if (rl_line_buffer[j] == ')') {
      j = 0;
    }
    j--;
  }
  if (j > 0 && rl_line_buffer[j] == '(' && rl_line_buffer[j-1] == ':') {
    int i = j - 2;
    while (i > 0 && !isspace (rl_line_buffer[i])) {
      i--;
    }
    struct tl_expression *E = find_expression (i);
    if (E != ((void*)0)) {
      char *field_name = cstr_substr (rl_line_buffer, i + 1, j - 1);

      expected_type = tl_expression_get_argument_type (E, field_name);

      cstr_free (&field_name);
      if (expected_type) {
        return rl_completion_matches (text, tl_type_generator);
      }
    }
  }

  struct tl_expression *E = find_expression (start);
  if (E) {
    expected_expr = E;
    return rl_completion_matches (text, tl_arg_generator);
  }
  return ((void*)0);
}
