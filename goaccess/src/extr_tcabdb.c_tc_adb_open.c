
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCADB ;


 int tcadbopen (int *,char const*) ;

__attribute__((used)) static int
tc_adb_open (TCADB * adb, const char *params)
{

  if (!tcadbopen (adb, params))
    return 1;
  return 0;
}
