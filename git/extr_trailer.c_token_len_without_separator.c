
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isalnum (char const) ;

__attribute__((used)) static size_t token_len_without_separator(const char *token, size_t len)
{
 while (len > 0 && !isalnum(token[len - 1]))
  len--;
 return len;
}
