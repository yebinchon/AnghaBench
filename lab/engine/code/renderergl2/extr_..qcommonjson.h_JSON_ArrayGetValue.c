
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* JSON_ArrayGetFirstValue (char const*,char const*) ;
 char* JSON_ArrayGetNextValue (char const*,char const*) ;

const char *JSON_ArrayGetValue(const char *json, const char *jsonEnd, unsigned int index)
{
 for (json = JSON_ArrayGetFirstValue(json, jsonEnd); json && index; json = JSON_ArrayGetNextValue(json, jsonEnd))
  index--;

 return json;
}
