
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalnum (char) ;

int is_rfc3986_unreserved(char ch)
{
 return isalnum(ch) ||
  ch == '-' || ch == '_' || ch == '.' || ch == '~';
}
