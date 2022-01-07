
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *JSON_SkipString(const char *json, const char *jsonEnd)
{
 for (json++; json < jsonEnd && *json != '"'; json++)
  if (*json == '\\')
   json++;

 return (json + 1 > jsonEnd) ? jsonEnd : json + 1;
}
