
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NONCE_LEN_LIMIT ;
 int die (char*,int,char const*) ;
 scalar_t__ isalnum (int) ;

__attribute__((used)) static void reject_invalid_nonce(const char *nonce, int len)
{
 int i = 0;

 if (NONCE_LEN_LIMIT <= len)
  die("the receiving end asked to sign an invalid nonce <%.*s>",
      len, nonce);

 for (i = 0; i < len; i++) {
  int ch = nonce[i] & 0xFF;
  if (isalnum(ch) ||
      ch == '-' || ch == '.' ||
      ch == '/' || ch == '+' ||
      ch == '=' || ch == '_')
   continue;
  die("the receiving end asked to sign an invalid nonce <%.*s>",
      len, nonce);
 }
}
