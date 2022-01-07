
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 int strncmp (char const*,char const*,int) ;

__attribute__((used)) static int match_token(const char *spec, int len, const char *token)
{
 int token_len = strlen(token);

 return len == token_len && !strncmp(spec, token, token_len);
}
