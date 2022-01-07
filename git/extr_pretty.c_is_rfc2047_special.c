
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rfc2047_type { ____Placeholder_rfc2047_type } rfc2047_type ;


 int RFC2047_ADDRESS ;
 scalar_t__ isalnum (char) ;
 int isprint (char) ;
 scalar_t__ isspace (char) ;
 scalar_t__ non_ascii (char) ;

__attribute__((used)) static int is_rfc2047_special(char ch, enum rfc2047_type type)
{
 if (non_ascii(ch) || !isprint(ch))
  return 1;






 if (isspace(ch) || ch == '=' || ch == '?' || ch == '_')
  return 1;
 if (type != RFC2047_ADDRESS)
  return 0;


 return !(isalnum(ch) || ch == '!' || ch == '*' || ch == '+' || ch == '-' || ch == '/');
}
