
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_STRUCT_CLOSE (char const) ;
 int IS_STRUCT_OPEN (char const) ;
 char* JSON_SkipSeparators (char const*,char const*) ;

const char *JSON_ArrayGetFirstValue(const char *json, const char *jsonEnd)
{
 if (!json || json >= jsonEnd || !IS_STRUCT_OPEN(*json))
  return ((void*)0);

 json = JSON_SkipSeparators(json + 1, jsonEnd);

 return (json >= jsonEnd || IS_STRUCT_CLOSE(*json)) ? ((void*)0) : json;
}
