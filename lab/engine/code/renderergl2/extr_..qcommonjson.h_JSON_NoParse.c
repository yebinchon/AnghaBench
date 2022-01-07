
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int JSON_NoParse(const char *json, const char *jsonEnd)
{
 if (!json || json >= jsonEnd || *json == 'f' || *json == 'n')
  return 1;

 if (*json == 't')
  return 2;

 return 0;
}
