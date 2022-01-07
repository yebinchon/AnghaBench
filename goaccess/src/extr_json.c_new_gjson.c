
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GJSON ;


 int * xcalloc (int,int) ;

__attribute__((used)) static GJSON *
new_gjson (void)
{
  GJSON *json = xcalloc (1, sizeof (GJSON));

  return json;
}
