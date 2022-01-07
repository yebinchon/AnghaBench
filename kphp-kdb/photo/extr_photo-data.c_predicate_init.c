
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int predicate ;


 scalar_t__ MAX_CONDITION_LEN ;
 int MAX_PREDICATES ;
 int* close_bracket ;
 scalar_t__ i_cmp ;
 scalar_t__ i_logical ;
 int * predicate_parce (char*,int ,scalar_t__,int) ;
 scalar_t__ strlen (char*) ;
 int wrn (char*,char*) ;

predicate *predicate_init (char *condition, int type_id) {
  if (condition == ((void*)0) || condition[0] == 0 || strlen (condition) + 1 > MAX_CONDITION_LEN) {
    return ((void*)0);
  }

  int i;
  int stack_pos[MAX_PREDICATES * 2 + 2], stack_n = 0;
  int op_cnt = 0;
  for (i = 0; condition[i] && op_cnt + 1 < MAX_PREDICATES && stack_n < 2 * MAX_PREDICATES + 1; i++) {
    close_bracket[i] = -1;

    if (condition[i] == '(') {
      stack_pos[stack_n++] = i;
    } else if (condition[i] == ')') {
      if (stack_n == 0) {
        return ((void*)0);
      }
      close_bracket[stack_pos[--stack_n]] = i;
    } else {
      if ((condition[i] == '|' && condition[i + 1] == '|') ||
          (condition[i] == '&' && condition[i + 1] == '&')) {
        op_cnt++;
      }
    }
  }
  if (condition[i]) {
    wrn("MAX_PREDICATES exceeded on condition %s\n", condition);
    return ((void*)0);
  }
  if (stack_n != 0) {
    return ((void*)0);
  }

  i_cmp = i_logical = 0;
  return predicate_parce (condition, 0, strlen (condition) - 1, type_id);
}
