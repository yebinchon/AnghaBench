
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_rfc3986_unreserved (char) ;

int is_rfc3986_reserved_or_unreserved(char ch)
{
 if (is_rfc3986_unreserved(ch))
  return 1;
 switch (ch) {
  case '!': case '*': case '\'': case '(': case ')': case ';':
  case ':': case '@': case '&': case '=': case '+': case '$':
  case ',': case '/': case '?': case '#': case '[': case ']':
   return 1;
 }
 return 0;
}
