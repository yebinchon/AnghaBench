
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trailer_item {int token; } ;
struct arg_item {int token; } ;


 int strlen (int ) ;
 int strncasecmp (int ,int ,size_t) ;
 size_t token_len_without_separator (int ,int ) ;

__attribute__((used)) static int same_token(struct trailer_item *a, struct arg_item *b)
{
 size_t a_len, b_len, min_len;

 if (!a->token)
  return 0;

 a_len = token_len_without_separator(a->token, strlen(a->token));
 b_len = token_len_without_separator(b->token, strlen(b->token));
 min_len = (a_len > b_len) ? b_len : a_len;

 return !strncasecmp(a->token, b->token, min_len);
}
