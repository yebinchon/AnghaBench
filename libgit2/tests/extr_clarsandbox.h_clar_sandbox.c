
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _clar_path ;
 scalar_t__ build_sandbox_path () ;
 scalar_t__ chdir (char*) ;

__attribute__((used)) static int clar_sandbox(void)
{
 if (_clar_path[0] == '\0' && build_sandbox_path() < 0)
  return -1;

 if (chdir(_clar_path) != 0)
  return -1;

 return 0;
}
