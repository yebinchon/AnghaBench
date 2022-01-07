
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_SEPARATOR (char const) ;

__attribute__((used)) static const char *JSON_SkipSeparators(const char *json, const char *jsonEnd)
{
 while (json < jsonEnd && IS_SEPARATOR(*json))
  json++;

 return json;
}
