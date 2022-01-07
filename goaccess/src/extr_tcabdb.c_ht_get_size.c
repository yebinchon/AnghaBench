
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int TCADB ;


 int tcadbrnum (int *) ;

__attribute__((used)) static uint32_t
ht_get_size (TCADB * adb)
{
  return tcadbrnum (adb);
}
