
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct forth_condition_stack {int top; } ;


 int MAX_ERROR_BUF_SIZE ;
 int add_lit_str (char*,void**,int*,int,char*) ;
 scalar_t__ isspace (char) ;
 int memset (char*,int ,int) ;
 int parse_token (char*,void**,int*,int,struct forth_condition_stack*,char*) ;
 int snprintf (char*,int,char*,int,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int vkprintf (int,char*,int,char*,int) ;

int lex (char *value, int value_len, void **IP, int ip_size, char last_error[MAX_ERROR_BUF_SIZE]) {
  int i, j, k = 0, n = 0;
  vkprintf (3, "lex (\"%.*s\", ip_size = %d\n", value_len, value, ip_size);
  struct forth_condition_stack cond_stack;
  cond_stack.top = -1;
  for (i = 0; ; k++) {
    while (i < value_len && isspace (value[i])) {
      i++;
    }
    if (i >= value_len) {
      break;
    }

    if (value[i] == '"') {

      i++;
      j = i;
      while (i < value_len && value[i] != '"') {
        i++;
      }
      if (i >= value_len) {
        strcpy (last_error, "lex: unclosed double quot");
        return -1;
      }
      value[i] = 0;
      if (!add_lit_str (value + j, IP, &n, ip_size, last_error)) {
        return -1;
      }
      i++;
      continue;
    }

    j = i;
    while (j < value_len && !isspace (value[j])) {
      j++;
    }
    value[j] = 0;
    if (!parse_token (value + i, IP, &n, ip_size, &cond_stack, last_error)) {
      int l = strlen (last_error);
      int o = MAX_ERROR_BUF_SIZE - l - 1;
      if (o > 0) {
        memset (last_error + l, 0, o + 1);
        snprintf (last_error + l, o , "\nlex: couldn't parse %d-th token (%s)", k, value + i);
      }
      return -1;
    }
    i = j + 1;
  }

  if (!parse_token ("BYE", IP, &n, ip_size, &cond_stack, last_error)) {
    return -1;
  }

  if (cond_stack.top >= 0) {
    strcpy (last_error, "unclosed if statement");
    return -1;
  }

  return n;
}
