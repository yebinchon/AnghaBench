
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RESERVED_NON_WS ;
 int strchr (int ,char) ;

__attribute__((used)) static int allow_unencoded(char ch)
{
 if (ch <= ' ' || ch == '%' || ch == '+')
  return 0;
 return !strchr(RESERVED_NON_WS, ch);
}
