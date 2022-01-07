
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* JSON_ArrayGetFirstValue (char const*,char const*) ;
 char* JSON_ArrayGetNextValue (char const*,char const*) ;

unsigned int JSON_ArrayGetIndex(const char *json, const char *jsonEnd, const char **indexes, unsigned int numIndexes)
{
 unsigned int length = 0;

 for (json = JSON_ArrayGetFirstValue(json, jsonEnd); json; json = JSON_ArrayGetNextValue(json, jsonEnd))
 {
  if (indexes && numIndexes)
  {
   *indexes++ = json;
   numIndexes--;
  }
  length++;
 }

 return length;
}
