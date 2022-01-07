
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ltrim (char*) ;
 char* rtrim (int ) ;

char *
trim_str (char *str)
{
  return rtrim (ltrim (str));
}
