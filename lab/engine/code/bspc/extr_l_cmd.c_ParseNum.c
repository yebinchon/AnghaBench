
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ParseHex (char*) ;
 int atol (char*) ;

int ParseNum (char *str)
{
 if (str[0] == '$')
  return ParseHex (str+1);
 if (str[0] == '0' && str[1] == 'x')
  return ParseHex (str+2);
 return atol (str);
}
