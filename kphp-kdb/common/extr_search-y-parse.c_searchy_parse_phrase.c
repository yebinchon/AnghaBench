
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int searchy_query_t ;


 int searchy_parse_phrase0 (int *,char*,int,int) ;

__attribute__((used)) static int searchy_parse_phrase (searchy_query_t *Q, char *text, int text_len, int quot_type, int minus) {
  char *wptr = text + text_len;
  const char old_char = *wptr;
  *wptr = 0;
  int res = searchy_parse_phrase0 (Q, text, quot_type, minus);
  *wptr = old_char;
  return res;
}
