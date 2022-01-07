
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR (char*,char) ;
 int ERR_FATAL ;

int
required_arg(char c, char *arg)
{
 if (arg == ((void*)0) || *arg != '-')
  return 0;

 ERR("option -%c requires an argument\n", c);
 return ERR_FATAL;
}
