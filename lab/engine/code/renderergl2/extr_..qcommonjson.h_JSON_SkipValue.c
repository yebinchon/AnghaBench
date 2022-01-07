
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IS_SEPARATOR (char const) ;
 int IS_STRUCT_CLOSE (char const) ;
 scalar_t__ IS_STRUCT_OPEN (char const) ;
 char* JSON_SkipString (char const*,char const*) ;
 char* JSON_SkipStruct (char const*,char const*) ;

__attribute__((used)) static const char *JSON_SkipValue(const char *json, const char *jsonEnd)
{
 if (json >= jsonEnd)
  return jsonEnd;
 else if (*json == '"')
  json = JSON_SkipString(json, jsonEnd);
 else if (IS_STRUCT_OPEN(*json))
  json = JSON_SkipStruct(json, jsonEnd);
 else
 {
  while (json < jsonEnd && !IS_SEPARATOR(*json) && !IS_STRUCT_CLOSE(*json))
   json++;
 }

 return json;
}
