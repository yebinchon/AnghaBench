
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_STRUCT_CLOSE (char const) ;
 char* JSON_SkipValueAndSeparators (char const*,char const*) ;

const char *JSON_ArrayGetNextValue(const char *json, const char *jsonEnd)
{
 if (!json || json >= jsonEnd || IS_STRUCT_CLOSE(*json))
  return ((void*)0);

 json = JSON_SkipValueAndSeparators(json, jsonEnd);

 return (json >= jsonEnd || IS_STRUCT_CLOSE(*json)) ? ((void*)0) : json;
}
