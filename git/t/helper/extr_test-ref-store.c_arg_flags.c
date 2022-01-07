
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int atoi (int ) ;
 int notnull (char const*,char const*) ;

__attribute__((used)) static unsigned int arg_flags(const char *arg, const char *name)
{
 return atoi(notnull(arg, name));
}
