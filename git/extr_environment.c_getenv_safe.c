
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct argv_array {char const** argv; int argc; } ;


 int argv_array_push (struct argv_array*,char const*) ;
 char* getenv (char const*) ;

__attribute__((used)) static const char *getenv_safe(struct argv_array *argv, const char *name)
{
 const char *value = getenv(name);

 if (!value)
  return ((void*)0);

 argv_array_push(argv, value);
 return argv->argv[argv->argc - 1];
}
